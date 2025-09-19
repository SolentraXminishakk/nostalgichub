-- Minimal Nostalgic-style GUI library (no templates, no example scripts)
local Library = {}
Library.__index = Library

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

-- Create or reuse a single ScreenGui in CoreGui for this library
local function ensureScreenGui(name)
    local existing = CoreGui:FindFirstChild(name)
    if existing and existing:IsA("ScreenGui") then
        return existing
    end
    local sg = Instance.new("ScreenGui")
    sg.Name = name
    sg.ResetOnSpawn = false
    sg.Parent = CoreGui
    return sg
end

-- Utility to make a rounded frame
local function makeRoundedFrame(parent, props)
    local f = Instance.new("Frame")
    for k,v in pairs(props or {}) do f[k] = v end
    f.Parent = parent
    local corner = Instance.new("UICorner", f)
    corner.CornerRadius = props.CornerRadius or UDim.new(0,6)
    return f
end

-- ripple effect (applies to button instance)
local function attachRipple(button)
    button.AutoButtonColor = false
    button.MouseButton1Down:Connect(function(x,y)
        local absPos = button.AbsolutePosition
        local absSize = button.AbsoluteSize
        local relX = math.clamp((x - absPos.X) / absSize.X, 0, 1)
        local relY = math.clamp((y - absPos.Y) / absSize.Y, 0, 1)

        local ripple = Instance.new("Frame")
        ripple.BackgroundTransparency = 1
        ripple.Size = UDim2.new(1,0,1,0)
        ripple.ClipsDescendants = true
        ripple.ZIndex = button.ZIndex + 1
        ripple.Parent = button

        local circle = Instance.new("Frame", ripple)
        circle.AnchorPoint = Vector2.new(0.5,0.5)
        circle.Position = UDim2.new(relX,0,relY,0)
        circle.Size = UDim2.new(0,0,0,0)
        circle.BackgroundColor3 = Color3.fromRGB(230,230,230)
        circle.BackgroundTransparency = 0.8
        circle.BorderSizePixel = 0
        local corner = Instance.new("UICorner", circle)
        corner.CornerRadius = UDim.new(1,0)

        local maxSize = math.sqrt(absSize.X*absSize.X + absSize.Y*absSize.Y)
        local tween = TweenService:Create(circle, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, maxSize, 0, maxSize),
            BackgroundTransparency = 1
        })
        tween:Play()
        tween.Completed:Connect(function() ripple:Destroy() end)
    end)
end

-- Library constructor
function Library.new(options)
    options = options or {}
    local self = setmetatable({}, Library)
    self.guiName = options.guiName or "__NostalgicGUI"
    self.ScreenGui = ensureScreenGui(self.guiName)
    self.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    self.tabs = {} -- hold refs
    return self
end

-- Create a tab container (a topbar + content area)
function Library:CreateTab(name, positionUDim2)
    local topbar = makeRoundedFrame(self.ScreenGui, {
        Name = ("TabTop_%s"):format(name),
        BackgroundColor3 = Color3.fromRGB(35,35,35),
        BorderSizePixel = 0,
        Position = positionUDim2 or UDim2.new(0.01,0,0.02,0),
        Size = UDim2.new(0,236,0,50)
    })

    local label = Instance.new("TextLabel", topbar)
    label.Size = UDim2.new(0,235,0,25)
    label.Position = UDim2.new(0,0,0.26,0)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.Nunito
    label.TextSize = 22
    label.TextColor3 = Color3.new(1,1,1)
    label.Text = tostring(name)

    local content = makeRoundedFrame(topbar, {
        Name = ("TabContent_%s"):format(name),
        BackgroundColor3 = Color3.fromRGB(25,25,25),
        Position = UDim2.new(0,0,1,0),
        Size = UDim2.new(0,236,0,330),
    })

    -- section layout container inside content
    local sections = Instance.new("Frame", content)
    sections.Name = "Sections"
    sections.BackgroundTransparency = 1
    sections.Size = UDim2.new(1,0,1,0)
    local layout = Instance.new("UIListLayout", sections)
    layout.Padding = UDim.new(0,6)
    layout.SortOrder = Enum.SortOrder.LayoutOrder

    local tabObj = { topbar = topbar, content = content, sectionsContainer = sections }
    self.tabs[name] = tabObj
    return tabObj
end

-- Create a section on a tab
function Library:CreateSection(tabObj, sectionName)
    local section = makeRoundedFrame(tabObj.sectionsContainer, {
        Name = ("Section_%s"):format(sectionName),
        BackgroundColor3 = Color3.fromRGB(15,15,15),
        Size = UDim2.new(1, 0, 0, 60),
    })
    local title = Instance.new("TextLabel", section)
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0.05,0,0.08,0)
    title.Size = UDim2.new(0.9,0,0,22)
    title.Text = tostring(sectionName)
    title.Font = Enum.Font.Roboto
    title.TextSize = 18
    title.TextColor3 = Color3.new(1,1,1)

    local content = Instance.new("Frame", section)
    content.BackgroundTransparency = 1
    content.Position = UDim2.new(0,0,0.45,0)
    content.Size = UDim2.new(1,0,0.55,0)
    local layout = Instance.new("UIListLayout", content)
    layout.Padding = UDim.new(0,6)

    return {section = section, content = content}
end

-- Add button (no LocalScript; callback handled here)
function Library:AddButton(sectionObj, text, callback)
    local btn = Instance.new("TextButton", sectionObj.content)
    btn.Size = UDim2.new(1, -12, 0, 36)
    btn.BackgroundColor3 = Color3.fromRGB(45,45,45)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Roboto
    btn.TextSize = 18
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Text = text or "Button"
    attachRipple(btn)
    if type(callback) == "function" then
        btn.MouseButton1Click:Connect(function()
            callback()
        end)
    end
    return btn
end

-- Add toggle (returns a state table)
function Library:AddToggle(sectionObj, text, default, callback)
    local holder = Instance.new("Frame", sectionObj.content)
    holder.Size = UDim2.new(1, -12, 0, 36)
    holder.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", holder)
    label.Size = UDim2.new(0.75,0,1,0)
    label.BackgroundTransparency = 1
    label.Text = text or "Toggle"
    label.Font = Enum.Font.Roboto
    label.TextSize = 18
    label.TextColor3 = Color3.new(1,1,1)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Position = UDim2.new(0.02,0,0,0)

    local btn = Instance.new("TextButton", holder)
    btn.Size = UDim2.new(0.2,0,0.8,0)
    btn.Position = UDim2.new(0.78,0,0.1,0)
    btn.Text = default and "ON" or "OFF"
    btn.Font = Enum.Font.Roboto
    btn.TextSize = 14

    local state = {value = default and true or false}
    btn.MouseButton1Click:Connect(function()
        state.value = not state.value
        btn.Text = state.value and "ON" or "OFF"
        if type(callback) == "function" then pcall(callback, state.value) end
    end)

    return state, holder
end

-- Add an input box
function Library:AddInput(sectionObj, labelText, defaultText, callback)
    local holder = Instance.new("Frame", sectionObj.content)
    holder.Size = UDim2.new(1, -12, 0, 36)
    holder.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", holder)
    label.Size = UDim2.new(0.5,0,1,0)
    label.BackgroundTransparency = 1
    label.Text = labelText or "Input"
    label.Font = Enum.Font.Roboto
    label.TextSize = 16
    label.TextColor3 = Color3.new(1,1,1)
    label.TextXAlignment = Enum.TextXAlignment.Left

    local box = Instance.new("TextBox", holder)
    box.Size = UDim2.new(0.45,0,0.8,0)
    box.Position = UDim2.new(0.52,0,0.1,0)
    box.Text = defaultText or ""
    box.ClearTextOnFocus = false
    box.Font = Enum.Font.Roboto
    box.TextSize = 14

    box.FocusLost:Connect(function(enterPressed)
        if type(callback) == "function" then pcall(callback, box.Text, enterPressed) end
    end)

    return box
end

-- Add keybind capture (no global state leaked)
function Library:AddKeybind(sectionObj, labelText, callback)
    local holder = Instance.new("Frame", sectionObj.content)
    holder.Size = UDim2.new(1, -12, 0, 36)
    holder.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", holder)
    label.Size = UDim2.new(0.6,0,1,0)
    label.BackgroundTransparency = 1
    label.Text = labelText or "Keybind"
    label.Font = Enum.Font.Roboto
    label.TextSize = 16
    label.TextColor3 = Color3.new(1,1,1)
    label.TextXAlignment = Enum.TextXAlignment.Left

    local box = Instance.new("TextBox", holder)
    box.Size = UDim2.new(0.3,0,0.8,0)
    box.Position = UDim2.new(0.62,0,0.1,0)
    box.Text = "None"
    box.ClearTextOnFocus = false
    box.Font = Enum.Font.Roboto
    box.TextSize = 14

    local chosenKey = nil
    local captureConn
    box.Focused:Connect(function()
        box.Text = "..."
        if captureConn then captureConn:Disconnect(); captureConn = nil end
        captureConn = UserInputService.InputBegan:Connect(function(input, gpe)
            if gpe then return end
            if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
            chosenKey = input.KeyCode
            box.Text = chosenKey.Name
            captureConn:Disconnect()
            captureConn = nil
        end)
    end)

    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if not chosenKey then return end
        if input.KeyCode == chosenKey then
            if type(callback) == "function" then pcall(callback) end
        end
    end)

    return box
end

return Library

-- Library.lua
-- Your original UI converted into a module-style library
-- All appearance scripts stay untouched

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Library = {}
Library.__index = Library

--// Create a Window
function Library:CreateWindow(name)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = name or "Window"
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBarFrameWindow"
    TopBar.Size = UDim2.new(0, 236, 0, 50)
    TopBar.Position = UDim2.new(0, 50, 0, 50)
    TopBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    TopBar.Parent = ScreenGui

    local Frame = Instance.new("Frame")
    Frame.Name = "FrameWindow"
    Frame.Size = UDim2.new(0, 236, 0, 330)
    Frame.Position = UDim2.new(0, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.Parent = TopBar

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    UIListLayout.Parent = Frame

    -- auto-resize height
    local function updateSize()
        Frame.Size = UDim2.new(Frame.Size.X.Scale, Frame.Size.X.Offset, 0, UIListLayout.AbsoluteContentSize.Y)
    end
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
    updateSize()

    local winObj = setmetatable({
        Gui = ScreenGui,
        TopBar = TopBar,
        Frame = Frame,
    }, Library)

    return winObj
end

--// Create a Section
function Library:CreateSection(title)
    local Section = Instance.new("Frame")
    Section.Name = "Section"
    Section.Size = UDim2.new(1, -10, 0, 40)
    Section.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Section.Parent = self.Frame

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 1, 0)
    Label.BackgroundTransparency = 1
    Label.Text = title or "Section"
    Label.TextColor3 = Color3.new(1, 1, 1)
    Label.TextSize = 20
    Label.Parent = Section

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    UIListLayout.Parent = Section

    local function updateSize()
        Section.Size = UDim2.new(Section.Size.X.Scale, Section.Size.X.Offset, 0, UIListLayout.AbsoluteContentSize.Y)
    end
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
    updateSize()

    local secObj = setmetatable({
        Section = Section,
    }, Library)

    return secObj
end

--// Button
function Library:CreateButton(text, callback)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -6, 0, 34)
    Btn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.TextSize = 18
    Btn.Text = text or "Button"
    Btn.Parent = self.Section

    Btn.MouseButton1Click:Connect(function()
        if callback then
            callback()
        end
    end)

    return Btn
end

--// Toggle
function Library:CreateToggle(text, default, callback)
    local Holder = Instance.new("Frame")
    Holder.Size = UDim2.new(1, -6, 0, 34)
    Holder.BackgroundTransparency = 1
    Holder.Parent = self.Section

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.8, 0, 1, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text or "Toggle"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 18
    Label.Parent = Holder

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0.18, -4, 0.8, 0)
    ToggleBtn.Position = UDim2.new(0.82, 0, 0.1, 0)
    ToggleBtn.Text = ""
    ToggleBtn.Parent = Holder

    local State = default or false
    local function updateVisual()
        if State then
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 144, 0)
        else
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(144, 0, 0)
        end
    end
    updateVisual()

    ToggleBtn.MouseButton1Click:Connect(function()
        State = not State
        updateVisual()
        if callback then callback(State) end
    end)

    return ToggleBtn
end

--// Slider (basic)
function Library:CreateSlider(text, min, max, default, callback)
    min = min or 0
    max = max or 100
    default = default or min

    local Holder = Instance.new("Frame")
    Holder.Size = UDim2.new(1, -6, 0, 40)
    Holder.BackgroundTransparency = 1
    Holder.Parent = self.Section

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 0, 20)
    Label.BackgroundTransparency = 1
    Label.Text = text or "Slider"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 18
    Label.Parent = Holder

    local Bar = Instance.new("Frame")
    Bar.Size = UDim2.new(1, 0, 0, 10)
    Bar.Position = UDim2.new(0, 0, 0, 24)
    Bar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Bar.Parent = Holder

    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new(0, 0, 1, 0)
    Fill.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    Fill.Parent = Bar

    local value = default
    local UserInputService = game:GetService("UserInputService")
    local dragging = false

    local function update()
        local pct = (value - min) / (max - min)
        Fill.Size = UDim2.new(pct, 0, 1, 0)
        if callback then callback(value) end
    end
    update()

    Bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
        end
    end)
    Bar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local abs = Bar.AbsolutePosition
            local size = Bar.AbsoluteSize
            local mouse = UserInputService:GetMouseLocation()
            local rel = math.clamp((mouse.X - abs.X) / size.X, 0, 1)
            value = math.floor(min + rel * (max - min))
            update()
        end
    end)

    return Holder
end

return Library

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local UIlib = {}
UIlib.__index = UIlib

-- Helpers
local function make(class, props)
	local obj = Instance.new(class)
	for k,v in pairs(props or {}) do
		obj[k] = v
	end
	return obj
end

local function setText(parent, text)
	local tl = parent:FindFirstChildWhichIsA("TextLabel", true)
	if tl then tl.Text = text end
end

-- Auto-resize helper for a container with UIListLayout
local function attachAutoResize(container, parentFrame, extraPadding)
	extraPadding = extraPadding or 0
	local list = container:FindFirstChildOfClass("UIListLayout")
	if not list then
		list = Instance.new("UIListLayout")
		list.Padding = UDim.new(0,6)
		list.Parent = container
	end

	local function update()
		local y = list.AbsoluteContentSize.Y + extraPadding
		parentFrame.Size = UDim2.new(parentFrame.Size.X.Scale, parentFrame.Size.X.Offset, 0, y)
	end
	list:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(update)
	update()
end

-- Create a ScreenGui + window container
function UIlib.CreateWindow(name, opts)
	opts = opts or {}
	local player = Players.LocalPlayer
	assert(player, "UIlib must be required from a LocalScript (client).")

	local screenGui = make("ScreenGui", {
		Name = name or "UI_Window",
		Parent = player:WaitForChild("PlayerGui"),
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false
	})

	local windowFolder = make("Frame", {
		Name = "WindowRoot",
		Size = opts.Size or UDim2.new(0, 760, 0, 140),
		Position = opts.Position or UDim2.new(0.02, 0, 0.02, 0),
		BackgroundTransparency = 1,
		Parent = screenGui
	})

	local self = setmetatable({
		ScreenGui = screenGui,
		Root = windowFolder,
		Tabs = {}
	}, UIlib)

	return self
end

-- Create a Tab (visual topbar + content frame)
function UIlib:CreateTab(tabName, opts)
	opts = opts or {}
	local topbar = make("Frame", {
		Name = "TabTopbar_"..tostring(tabName),
		Size = opts.TopbarSize or UDim2.new(0, 236, 0, 50),
		Parent = self.Root,
		BackgroundColor3 = Color3.fromRGB(35,35,35)
	})

	local label = make("TextLabel", {
		Name = "TabLabel",
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		Font = Enum.Font.Nunito,
		TextSize = 22,
		TextColor3 = Color3.new(1,1,1),
		Text = tabName or "Tab",
		Parent = topbar
	})

	-- Content frame (where sections live)
	local content = make("Frame", {
		Name = "TabContent",
		Size = opts.ContentSize or UDim2.new(0, 236, 0, 330),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(25,25,25),
		Parent = topbar
	})

	-- internal container for sections so we can auto-size each section individually
	local sectionsHolder = make("Frame", {
		Name = "SectionsHolder",
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		Parent = content
	})
	local sectionsLayout = make("UIListLayout", {Parent = sectionsHolder, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0,6)})

	local tab = {
		Topbar = topbar,
		Label = label,
		Content = content,
		Holder = sectionsHolder,
		Layout = sectionsLayout,
		Sections = {}
	}

	-- tab methods
	function tab:AddSection(sectionName, options)
		options = options or {}
		local section = make("Frame", {
			Name = "Section_"..tostring(sectionName),
			Size = options.Size or UDim2.new(1, 0, 0, 40),
			BackgroundColor3 = options.BackgroundColor or Color3.fromRGB(40,40,40),
			Parent = self.Holder
		})
		local title = make("TextLabel", {
			Name = "SectionLabel",
			Size = UDim2.new(1, -6, 0, 28),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			Font = Enum.Font.Roboto,
			TextSize = 18,
			TextColor3 = Color3.new(1,1,1),
			Text = sectionName or "Section",
			Parent = section
		})

		-- content container inside this section that will hold controls
		local contentFrame = make("Frame", {
			Name = "Controls",
			Size = UDim2.new(1, -12, 0, 0),
			Position = UDim2.new(0,6,0,36),
			BackgroundTransparency = 1,
			Parent = section
		})
		local list = make("UIListLayout", {Parent = contentFrame, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0,6)})
		attachAutoResize(contentFrame, section, 48) -- 48 accounts for title + padding

		local sectionObj = {
			SectionFrame = section,
			Title = title,
			Controls = contentFrame,
			Layout = list
		}

		-- control creators
		function sectionObj:AddButton(text, callback)
			local btn = make("TextButton", {
				Name = "Button_"..tostring(text),
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundColor3 = Color3.fromRGB(28,28,28),
				Font = Enum.Font.Roboto,
				TextSize = 18,
				Text = text or "Button",
				Parent = self.Controls,
			})
			btn.MouseButton1Click:Connect(function()
				if callback then
					pcall(callback)
				end
			end)
			return btn
		end

		function sectionObj:AddToggle(text, default, callback)
			local holder = make("Frame", {Size = UDim2.new(1,0,0,34), BackgroundTransparency = 1, Parent = self.Controls})
			local lbl = make("TextLabel", {Size = UDim2.new(0.8,0,1,0), BackgroundTransparency = 1, Text = text or "Toggle", Font = Enum.Font.Roboto, TextSize = 18, Parent = holder})
			local toggleBtn = make("TextButton", {Size = UDim2.new(0.18, -4, 0.8, 0), Position = UDim2.new(0.82, 0, 0.1, 0), Text = "", Parent = holder, AutoButtonColor = false})
			local state = default and true or false
			local function apply()
				if state then
					toggleBtn.BackgroundColor3 = Color3.fromRGB(0,160,0)
				else
					toggleBtn.BackgroundColor3 = Color3.fromRGB(160,0,0)
				end
				if callback then pcall(callback, state) end
			end
			toggleBtn.MouseButton1Click:Connect(function()
				state = not state
				apply()
			end)
			apply()
			return {
				Frame = holder,
				Get = function() return state end,
				Set = function(v) state = not not v; apply() end
			}
		end

		function sectionObj:AddSlider(text, min, max, default, callback)
			min = min or 0; max = max or 100; default = default or min
			local holder = make("Frame", {Size = UDim2.new(1,0,0,46), BackgroundTransparency = 1, Parent = self.Controls})
			local lbl = make("TextLabel", {Size = UDim2.new(1,0,0,18), Position = UDim2.new(0,0,0,0), BackgroundTransparency = 1, Text = text or "Slider", Font = Enum.Font.Roboto, TextSize = 16, Parent = holder})
			local bg = make("Frame", {Size = UDim2.new(1,0,0,16), Position = UDim2.new(0,0,0,22), BackgroundColor3 = Color3.fromRGB(30,30,30), Parent = holder})
			local fill = make("Frame", {Size = UDim2.new(0,0,1,0), Parent = bg, BackgroundColor3 = Color3.fromRGB(200,200,200)})
			local dragging = false
			local value = math.clamp(default, min, max)
			local function updateFill()
				local pct = (value - min) / (max - min)
				fill.Size = UDim2.new(pct, 0, 1, 0)
				if callback then pcall(callback, value) end
			end
			bg.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
			bg.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					local abs = bg.AbsolutePosition
					local size = bg.AbsoluteSize
					local mouse = game:GetService("UserInputService"):GetMouseLocation()
					local rel = math.clamp((mouse.X - abs.X) / size.X, 0, 1)
					value = min + rel * (max - min)
					updateFill()
				end
			end)
			updateFill()
			return {
				Frame = holder,
				Get = function() return value end,
				Set = function(v) value = math.clamp(v, min, max); updateFill() end
			}
		end

		function sectionObj:AddInput(text, placeholder, callback)
			local holder = make("Frame", {Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1, Parent = self.Controls})
			local lbl = make("TextLabel", {Size = UDim2.new(0.6,0,1,0), BackgroundTransparency = 1, Text = text or "Input", Font = Enum.Font.Roboto, TextSize = 16, Parent = holder})
			local box = make("TextBox", {Size = UDim2.new(0.38,0,0.8,0), Position = UDim2.new(0.62,0,0.1,0), BackgroundColor3 = Color3.fromRGB(30,30,30), Text = "", ClearTextOnFocus = false, Parent = holder})
			box.FocusLost:Connect(function(enter)
				if enter and callback then pcall(callback, box.Text) end
			end)
			return box
		end

		function sectionObj:AddKeybind(text, defaultKeyName, callback)
			local holder = make("Frame", {Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1, Parent = self.Controls})
			local lbl = make("TextLabel", {Size = UDim2.new(0.6,0,1,0), BackgroundTransparency = 1, Text = text or "Keybind", Font = Enum.Font.Roboto, TextSize = 16, Parent = holder})
			local box = make("TextBox", {Size = UDim2.new(0.38,0,0.8,0), Position = UDim2.new(0.62,0,0.1,0), BackgroundColor3 = Color3.fromRGB(30,30,30), Text = defaultKeyName or "None", ClearTextOnFocus = false, Parent = holder})
			local UIS = game:GetService("UserInputService")
			local chosen = nil
			box.Focused:Connect(function()
				box.Text = "..."
				local conn
				conn = UIS.InputBegan:Connect(function(input, gpe)
					if gpe then return end
					if input.UserInputType == Enum.UserInputType.Keyboard then
						chosen = input.KeyCode
						box.Text = chosen.Name
						conn:Disconnect()
					end
				end)
			end)
			UIS.InputBegan:Connect(function(input, gpe)
				if gpe then return end
				if chosen and input.KeyCode == chosen then
					if callback then pcall(callback) end
				end
			end)
			return box
		end

		function sectionObj:AddDropdown(text, options, callback)
			options = options or {}
			local holder = make("Frame", {Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1, Parent = self.Controls})
			local lbl = make("TextLabel", {Size = UDim2.new(0.6,0,1,0), BackgroundTransparency = 1, Text = text or "Dropdown", Font = Enum.Font.Roboto, TextSize = 16, Parent = holder})
			local btn = make("TextButton", {Size = UDim2.new(0.38,0,0.8,0), Position = UDim2.new(0.62,0,0.1,0), Text = "Open", Parent = holder})
			local menu = make("Frame", {Size = UDim2.new(0, 200, 0, 5), Position = UDim2.new(0,0,1,0), BackgroundColor3 = Color3.fromRGB(30,30,30), Visible = false, Parent = btn})
			local menuLayout = make("UIListLayout", {Parent = menu, SortOrder = Enum.SortOrder.LayoutOrder})
			local function refresh()
				for _,v in pairs(menu:GetChildren()) do
					if v:IsA("TextButton") then v:Destroy() end
				end
				for i,opt in ipairs(options) do
					local b = make("TextButton", {Size = UDim2.new(1,0,0,26), Text = tostring(opt), Parent = menu})
					b.MouseButton1Click:Connect(function()
						menu.Visible = false
						btn.Text = tostring(opt)
						if callback then pcall(callback, opt) end
					end)
				end
				menu.Size = UDim2.new(0,200,0, #options * 26)
			end
			refresh()
			btn.MouseButton1Click:Connect(function()
				menu.Visible = not menu.Visible
			end)
			return {
				Button = btn,
				SetOptions = function(newOpts) options = newOpts or {}; refresh() end
			}
		end

		table.insert(self.Sections, sectionObj)
		return sectionObj
	end

	self.Tabs[tabName] = tab
	table.insert(self.Tabs, tab)
	return tab
end

return setmetatable({}, {__call = function(_,...) return UIlib.CreateWindow(...) end})

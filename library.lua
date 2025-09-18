local Library = {}
Library.__index = Library

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local templatesFolder = ReplicatedStorage:FindFirstChild("__NostalgicTemplates") or Instance.new("Folder", ReplicatedStorage)
templatesFolder.Name = "__NostalgicTemplates"

-- helper to find descendant by name inside templates (safe, uses first match)
local function findTemplate(root, name)
    for _, v in ipairs(root:GetDescendants()) do
        if v.Name == name then return v end
    end
    return nil
end

-- create templates if not already created
if not templatesFolder:FindFirstChild("NostalgicMM2") then

local templatesFolder = templatesFolder -- already defined above

local NostalgicMM2 = Instance.new("ScreenGui")
local TabNameTopbar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICornerFix = Instance.new("Frame")
local TabName = Instance.new("Frame")
local SectionName = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local SectionName_2 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local ButtonName1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ButtonName2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Input = Instance.new("Frame")
local inputsName = Instance.new("TextBox")
local TextLabel_3 = Instance.new("TextLabel")
local Keybind = Instance.new("Frame")
local KeybindsName = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Background = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Fill = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Trigger = Instance.new("TextButton")
local Amount = Instance.new("TextLabel")
local MyDropdownMenu = Instance.new("TextButton")
local MenuFrame = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local ExampleMenuButton = Instance.new("TextButton")
local ExampleMenuLabel = Instance.new("TextLabel")
local Toggle = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UICornerFix_2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TabNameTopbar_2 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local UICornerFix_3 = Instance.new("Frame")
local TabName_2 = Instance.new("Frame")
local SectionName_3 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local SectionName_4 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local ButtonName1_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local ButtonName2_2 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Input_2 = Instance.new("Frame")
local inputsName_2 = Instance.new("TextBox")
local TextLabel_8 = Instance.new("TextLabel")
local Keybind_2 = Instance.new("Frame")
local KeybindsName_2 = Instance.new("TextBox")
local TextLabel_9 = Instance.new("TextLabel")
local Slider_2 = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local Background_2 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Fill_2 = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Trigger_2 = Instance.new("TextButton")
local Amount_2 = Instance.new("TextLabel")
local MyDropdownMenu_2 = Instance.new("TextButton")
local MenuFrame_2 = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local ExampleMenuButton_2 = Instance.new("TextButton")
local ExampleMenuLabel_2 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local UICornerFix_4 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local TabNameTopbar_3 = Instance.new("Frame")
local TextLabel_11 = Instance.new("TextLabel")
local UICornerFix_5 = Instance.new("Frame")
local TabName_3 = Instance.new("Frame")
local SectionName_5 = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local TextLabel_12 = Instance.new("TextLabel")
local SectionName_6 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local ButtonName1_3 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local ButtonName2_3 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local Input_3 = Instance.new("Frame")
local inputsName_3 = Instance.new("TextBox")
local TextLabel_13 = Instance.new("TextLabel")
local Keybind_3 = Instance.new("Frame")
local KeybindsName_3 = Instance.new("TextBox")
local TextLabel_14 = Instance.new("TextLabel")
local Slider_3 = Instance.new("Frame")
local TextLabel_15 = Instance.new("TextLabel")
local Background_3 = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local Fill_3 = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local Trigger_3 = Instance.new("TextButton")
local Amount_3 = Instance.new("TextLabel")
local MyDropdownMenu_3 = Instance.new("TextButton")
local MenuFrame_3 = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local ExampleMenuButton_3 = Instance.new("TextButton")
local ExampleMenuLabel_3 = Instance.new("TextLabel")
local Toggle_3 = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local UICornerFix_6 = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")

NostalgicMM2.Name = "NostalgicMM2"
NostalgicMM2.Parent = templatesFolder
NostalgicMM2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TabNameTopbar.Name = "TabNameTopbar"
TabNameTopbar.Parent = NostalgicMM2
TabNameTopbar.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TabNameTopbar.BorderColor3 = Color3.new(0, 0, 0)
TabNameTopbar.BorderSizePixel = 0
TabNameTopbar.Position = UDim2.new(0.00545058167, 0, 0.0134322178, -2)
TabNameTopbar.Size = UDim2.new(0, 236, 0, 50)

TextLabel.Parent = TabNameTopbar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.25999999, 0)
TextLabel.Size = UDim2.new(0, 235, 0, 25)
TextLabel.Font = Enum.Font.Nunito
TextLabel.Text = "TABNAME HERE"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 25

UICornerFix.Name = "UICornerFix"
UICornerFix.Parent = TabNameTopbar
UICornerFix.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
UICornerFix.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix.BorderSizePixel = 0
UICornerFix.Position = UDim2.new(0, 0, 0.74000001, 0)
UICornerFix.Size = UDim2.new(0, 236, 0, 14)

TabName.Name = "TabName"
TabName.Parent = TabNameTopbar
TabName.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TabName.BorderColor3 = Color3.new(0, 0, 0)
TabName.BorderSizePixel = 0
TabName.Position = UDim2.new(0, 0, 1, 0)
TabName.Size = UDim2.new(0, 236, 0, 330)

SectionName.Name = "SectionName"
SectionName.Parent = TabName
SectionName.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SectionName.BorderColor3 = Color3.new(0, 0, 0)
SectionName.BorderSizePixel = 0
SectionName.Position = UDim2.new(0.0425531901, 0, 0.0248155612, 0)
SectionName.Size = UDim2.new(0, 216, 0, 47)

UICorner.Parent = SectionName
UICorner.CornerRadius = UDim.new(0, 6)

TextLabel_2.Parent = SectionName
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0694444478, 0, 0.218723372, 0)
TextLabel_2.Size = UDim2.new(0, 182, 0, 25)
TextLabel_2.Font = Enum.Font.Roboto
TextLabel_2.Text = "my section name"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 20

SectionName_2.Name = "SectionName"
SectionName_2.Parent = SectionName
SectionName_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SectionName_2.BorderColor3 = Color3.new(0, 0, 0)
SectionName_2.BorderSizePixel = 0
SectionName_2.Position = UDim2.new(-0.0462962948, 0, 1.12766027, 0)
SectionName_2.Size = UDim2.new(0, 234, 0, 264)

UIListLayout.Parent = SectionName_2
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

ButtonName1.Name = "ButtonName1"
ButtonName1.Parent = SectionName_2
ButtonName1.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName1.BorderColor3 = Color3.new(0, 0, 0)
ButtonName1.BorderSizePixel = 0
ButtonName1.Position = UDim2.new(0.110638298, 0, 0, 0)
ButtonName1.Size = UDim2.new(0, 183, 0, 39)
ButtonName1.Font = Enum.Font.Roboto
ButtonName1.Text = "My Button Name Here"
ButtonName1.TextColor3 = Color3.new(1, 1, 1)
ButtonName1.TextSize = 20

UICorner_2.Parent = ButtonName1
UICorner_2.CornerRadius = UDim.new(0, 4)

ButtonName2.Name = "ButtonName2"
ButtonName2.Parent = SectionName_2
ButtonName2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName2.BorderColor3 = Color3.new(0, 0, 0)
ButtonName2.BorderSizePixel = 0
ButtonName2.Position = UDim2.new(-0.190170944, 0, -0.354385972, 0)
ButtonName2.Size = UDim2.new(0, 183, 0, 39)
ButtonName2.Font = Enum.Font.Roboto
ButtonName2.Text = "My Button Name Here"
ButtonName2.TextColor3 = Color3.new(1, 1, 1)
ButtonName2.TextSize = 20

UICorner_3.Parent = ButtonName2
UICorner_3.CornerRadius = UDim.new(0, 4)

Input.Name = "Input"
Input.Parent = SectionName_2
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderColor3 = Color3.new(0, 0, 0)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Input.Size = UDim2.new(0, 237, 0, 39)

inputsName.Name = "inputsName"
inputsName.Parent = Input
inputsName.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
inputsName.BorderColor3 = Color3.new(0, 0, 0)
inputsName.BorderSizePixel = 0
inputsName.ClipsDescendants = true
inputsName.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
inputsName.Size = UDim2.new(0, 74, 0, 30)
inputsName.ClearTextOnFocus = false
inputsName.Font = Enum.Font.Roboto
inputsName.PlaceholderColor3 = Color3.new(1, 1, 1)
inputsName.PlaceholderText = "..."
inputsName.Text = ""
inputsName.TextColor3 = Color3.new(1, 1, 1)
inputsName.TextSize = 16
inputsName.TextWrapped = true

TextLabel_3.Parent = Input
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.00843881816, 0, 0.179487184, 0)
TextLabel_3.Size = UDim2.new(0, 139, 0, 23)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "My Input Name Here"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 18

Keybind.Name = "Keybind"
Keybind.Parent = SectionName_2
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.BorderColor3 = Color3.new(0, 0, 0)
Keybind.BorderSizePixel = 0
Keybind.Position = UDim2.new(-0.00641025649, 0, 0.456140339, 0)
Keybind.Size = UDim2.new(0, 237, 0, 39)

KeybindsName.Name = "KeybindsName"
KeybindsName.Parent = Keybind
KeybindsName.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
KeybindsName.BorderColor3 = Color3.new(0, 0, 0)
KeybindsName.BorderSizePixel = 0
KeybindsName.ClipsDescendants = true
KeybindsName.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
KeybindsName.Size = UDim2.new(0, 74, 0, 30)
KeybindsName.ClearTextOnFocus = false
KeybindsName.Font = Enum.Font.Roboto
KeybindsName.PlaceholderColor3 = Color3.new(1, 1, 1)
KeybindsName.Text = "None"
KeybindsName.TextColor3 = Color3.new(1, 1, 1)
KeybindsName.TextSize = 16
KeybindsName.TextWrapped = true

TextLabel_4.Parent = Keybind
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 0, 0.205128208, 0)
TextLabel_4.Size = UDim2.new(0, 153, 0, 21)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "My Keybind Name Here"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 18

Slider.Name = "Slider"
Slider.Parent = SectionName_2
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.BorderColor3 = Color3.new(0, 0, 0)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Slider.Size = UDim2.new(0, 237, 0, 39)

TextLabel_5.Parent = Slider
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 0, -0.0769230798, 0)
TextLabel_5.Size = UDim2.new(0, 153, 0, 22)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "My Slider Name Here"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 18

Background.Name = "Background"
Background.Parent = Slider
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.BorderColor3 = Color3.new(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.0485231727, 0, 0.487179488, 0)
Background.Size = UDim2.new(0, 215, 0, 15)

UICorner_4.Parent = Background
UICorner_4.CornerRadius = UDim.new(0, 5)

Fill.Name = "Fill"
Fill.Parent = Background
Fill.BackgroundColor3 = Color3.new(0, 0, 0)
Fill.BorderColor3 = Color3.new(0, 0, 0)
Fill.BorderSizePixel = 0
Fill.Size = UDim2.new(0, 0, 0, 15)

UICorner_5.Parent = Fill
UICorner_5.CornerRadius = UDim.new(0, 5)

Trigger.Name = "Trigger"
Trigger.Parent = Background
Trigger.BackgroundColor3 = Color3.new(1, 1, 1)
Trigger.BackgroundTransparency = 1
Trigger.BorderColor3 = Color3.new(0, 0, 0)
Trigger.BorderSizePixel = 0
Trigger.Size = UDim2.new(0, 215, 0, 15)
Trigger.Font = Enum.Font.SourceSans
Trigger.Text = ""
Trigger.TextColor3 = Color3.new(0, 0, 0)
Trigger.TextSize = 14

Amount.Name = "Amount"
Amount.Parent = Background
Amount.BackgroundColor3 = Color3.new(1, 1, 1)
Amount.BackgroundTransparency = 1
Amount.BorderColor3 = Color3.new(0, 0, 0)
Amount.BorderSizePixel = 0
Amount.Size = UDim2.new(0, 215, 0, 15)
Amount.Font = Enum.Font.SourceSans
Amount.Text = "0"
Amount.TextColor3 = Color3.new(0.560784, 0, 0.00784314)
Amount.TextSize = 18

MyDropdownMenu.Name = "MyDropdownMenu"
MyDropdownMenu.Parent = SectionName_2
MyDropdownMenu.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
MyDropdownMenu.BorderColor3 = Color3.new(0, 0, 0)
MyDropdownMenu.BorderSizePixel = 0
MyDropdownMenu.Position = UDim2.new(0.0726495758, 0, 0.817543864, 0)
MyDropdownMenu.Size = UDim2.new(0, 200, 0, 32)
MyDropdownMenu.Font = Enum.Font.SourceSans
MyDropdownMenu.Text = "My Dropdown Menu!"
MyDropdownMenu.TextColor3 = Color3.new(1, 1, 1)
MyDropdownMenu.TextSize = 21

MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = MyDropdownMenu
MenuFrame.BackgroundColor3 = Color3.new(0.054902, 0.054902, 0.054902)
MenuFrame.BackgroundTransparency = 1
MenuFrame.BorderColor3 = Color3.new(0, 0, 0)
MenuFrame.BorderSizePixel = 0
MenuFrame.Position = UDim2.new(0, 0, 1, 0)
MenuFrame.Size = UDim2.new(0, 200, 0, 5)
MenuFrame.Visible = false

UIListLayout_2.Parent = MenuFrame
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

ExampleMenuButton.Name = "ExampleMenuButton"
ExampleMenuButton.Parent = MenuFrame
ExampleMenuButton.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
ExampleMenuButton.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuButton.BorderSizePixel = 0
ExampleMenuButton.Position = UDim2.new(0, 0, 0.03539823, 0)
ExampleMenuButton.Size = UDim2.new(0, 200, 0, 28)
ExampleMenuButton.Font = Enum.Font.SourceSans
ExampleMenuButton.Text = "Menu Button Type"
ExampleMenuButton.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuButton.TextSize = 18

ExampleMenuLabel.Name = "ExampleMenuLabel"
ExampleMenuLabel.Parent = MenuFrame
ExampleMenuLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel.BackgroundTransparency = 1
ExampleMenuLabel.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuLabel.BorderSizePixel = 0
ExampleMenuLabel.Position = UDim2.new(0.0125000002, 0, 0.0929203555, 0)
ExampleMenuLabel.Size = UDim2.new(0, 195, 0, 28)
ExampleMenuLabel.Font = Enum.Font.SourceSans
ExampleMenuLabel.Text = "My Menu Label Example Here"
ExampleMenuLabel.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel.TextSize = 18

Toggle.Name = "Toggle"
Toggle.Parent = SectionName_2
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.BorderColor3 = Color3.new(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(-0.0341880359, 0, 0.873754144, 0)
Toggle.Size = UDim2.new(0, 237, 0, 38)

UICorner_6.Parent = TabName
UICorner_6.CornerRadius = UDim.new(0, 12)

UICornerFix_2.Name = "UICornerFix"
UICornerFix_2.Parent = TabNameTopbar
UICornerFix_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
UICornerFix_2.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix_2.BorderSizePixel = 0
UICornerFix_2.Position = UDim2.new(0, 0, 1.01999998, 0)
UICornerFix_2.Size = UDim2.new(0, 236, 0, 8)

UICorner_7.Parent = TabNameTopbar
UICorner_7.CornerRadius = UDim.new(0, 12)

TabNameTopbar_2.Name = "TabNameTopbar"
TabNameTopbar_2.Parent = NostalgicMM2
TabNameTopbar_2.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TabNameTopbar_2.BorderColor3 = Color3.new(0, 0, 0)
TabNameTopbar_2.BorderSizePixel = 0
TabNameTopbar_2.Position = UDim2.new(0.152010664, 0, 0.0145800598, -2)
TabNameTopbar_2.Size = UDim2.new(0, 236, 0, 50)

TextLabel_6.Parent = TabNameTopbar_2
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0, 0, 0.25999999, 0)
TextLabel_6.Size = UDim2.new(0, 235, 0, 25)
TextLabel_6.Font = Enum.Font.Nunito
TextLabel_6.Text = "2ND TABNAME HERE"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextSize = 25

UICornerFix_3.Name = "UICornerFix"
UICornerFix_3.Parent = TabNameTopbar_2
UICornerFix_3.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
UICornerFix_3.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix_3.BorderSizePixel = 0
UICornerFix_3.Position = UDim2.new(0, 0, 0.74000001, 0)
UICornerFix_3.Size = UDim2.new(0, 236, 0, 14)

TabName_2.Name = "TabName"
TabName_2.Parent = TabNameTopbar_2
TabName_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TabName_2.BorderColor3 = Color3.new(0, 0, 0)
TabName_2.BorderSizePixel = 0
TabName_2.Position = UDim2.new(0, 0, 1, 0)
TabName_2.Size = UDim2.new(0, 236, 0, 330)

SectionName_3.Name = "SectionName"
SectionName_3.Parent = TabName_2
SectionName_3.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SectionName_3.BorderColor3 = Color3.new(0, 0, 0)
SectionName_3.BorderSizePixel = 0
SectionName_3.Position = UDim2.new(0.0425531901, 0, 0.0248155612, 0)
SectionName_3.Size = UDim2.new(0, 216, 0, 47)

UICorner_8.Parent = SectionName_3
UICorner_8.CornerRadius = UDim.new(0, 6)

TextLabel_7.Parent = SectionName_3
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0694444478, 0, 0.218723372, 0)
TextLabel_7.Size = UDim2.new(0, 182, 0, 25)
TextLabel_7.Font = Enum.Font.Roboto
TextLabel_7.Text = "my section name"
TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
TextLabel_7.TextSize = 20

SectionName_4.Name = "SectionName"
SectionName_4.Parent = SectionName_3
SectionName_4.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SectionName_4.BorderColor3 = Color3.new(0, 0, 0)
SectionName_4.BorderSizePixel = 0
SectionName_4.Position = UDim2.new(-0.0462962948, 0, 1.12766027, 0)
SectionName_4.Size = UDim2.new(0, 234, 0, 264)

UIListLayout_3.Parent = SectionName_4
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 6)

ButtonName1_2.Name = "ButtonName1"
ButtonName1_2.Parent = SectionName_4
ButtonName1_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName1_2.BorderColor3 = Color3.new(0, 0, 0)
ButtonName1_2.BorderSizePixel = 0
ButtonName1_2.Position = UDim2.new(0.110638298, 0, 0, 0)
ButtonName1_2.Size = UDim2.new(0, 183, 0, 39)
ButtonName1_2.Font = Enum.Font.Roboto
ButtonName1_2.Text = "My Button Name Here"
ButtonName1_2.TextColor3 = Color3.new(1, 1, 1)
ButtonName1_2.TextSize = 20

UICorner_9.Parent = ButtonName1_2
UICorner_9.CornerRadius = UDim.new(0, 4)

ButtonName2_2.Name = "ButtonName2"
ButtonName2_2.Parent = SectionName_4
ButtonName2_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName2_2.BorderColor3 = Color3.new(0, 0, 0)
ButtonName2_2.BorderSizePixel = 0
ButtonName2_2.Position = UDim2.new(-0.190170944, 0, -0.354385972, 0)
ButtonName2_2.Size = UDim2.new(0, 183, 0, 39)
ButtonName2_2.Font = Enum.Font.Roboto
ButtonName2_2.Text = "My Button Name Here"
ButtonName2_2.TextColor3 = Color3.new(1, 1, 1)
ButtonName2_2.TextSize = 20

UICorner_10.Parent = ButtonName2_2
UICorner_10.CornerRadius = UDim.new(0, 4)

Input_2.Name = "Input"
Input_2.Parent = SectionName_4
Input_2.BackgroundColor3 = Color3.new(1, 1, 1)
Input_2.BackgroundTransparency = 1
Input_2.BorderColor3 = Color3.new(0, 0, 0)
Input_2.BorderSizePixel = 0
Input_2.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Input_2.Size = UDim2.new(0, 237, 0, 39)

inputsName_2.Name = "inputsName"
inputsName_2.Parent = Input_2
inputsName_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
inputsName_2.BorderColor3 = Color3.new(0, 0, 0)
inputsName_2.BorderSizePixel = 0
inputsName_2.ClipsDescendants = true
inputsName_2.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
inputsName_2.Size = UDim2.new(0, 74, 0, 30)
inputsName_2.ClearTextOnFocus = false
inputsName_2.Font = Enum.Font.Roboto
inputsName_2.PlaceholderColor3 = Color3.new(1, 1, 1)
inputsName_2.PlaceholderText = "..."
inputsName_2.Text = ""
inputsName_2.TextColor3 = Color3.new(1, 1, 1)
inputsName_2.TextSize = 16
inputsName_2.TextWrapped = true

TextLabel_8.Parent = Input_2
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.00843881816, 0, 0.179487184, 0)
TextLabel_8.Size = UDim2.new(0, 139, 0, 23)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "My Input Name Here"
TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
TextLabel_8.TextSize = 18

Keybind_2.Name = "Keybind"
Keybind_2.Parent = SectionName_4
Keybind_2.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind_2.BackgroundTransparency = 1
Keybind_2.BorderColor3 = Color3.new(0, 0, 0)
Keybind_2.BorderSizePixel = 0
Keybind_2.Position = UDim2.new(-0.00641025649, 0, 0.456140339, 0)
Keybind_2.Size = UDim2.new(0, 237, 0, 39)

KeybindsName_2.Name = "KeybindsName"
KeybindsName_2.Parent = Keybind_2
KeybindsName_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
KeybindsName_2.BorderColor3 = Color3.new(0, 0, 0)
KeybindsName_2.BorderSizePixel = 0
KeybindsName_2.ClipsDescendants = true
KeybindsName_2.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
KeybindsName_2.Size = UDim2.new(0, 74, 0, 30)
KeybindsName_2.ClearTextOnFocus = false
KeybindsName_2.Font = Enum.Font.Roboto
KeybindsName_2.PlaceholderColor3 = Color3.new(1, 1, 1)
KeybindsName_2.Text = "None"
KeybindsName_2.TextColor3 = Color3.new(1, 1, 1)
KeybindsName_2.TextSize = 16
KeybindsName_2.TextWrapped = true

TextLabel_9.Parent = Keybind_2
TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0, 0, 0.205128208, 0)
TextLabel_9.Size = UDim2.new(0, 153, 0, 21)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "My Keybind Name Here"
TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
TextLabel_9.TextSize = 18

Slider_2.Name = "Slider"
Slider_2.Parent = SectionName_4
Slider_2.BackgroundColor3 = Color3.new(1, 1, 1)
Slider_2.BackgroundTransparency = 1
Slider_2.BorderColor3 = Color3.new(0, 0, 0)
Slider_2.BorderSizePixel = 0
Slider_2.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Slider_2.Size = UDim2.new(0, 237, 0, 39)

TextLabel_10.Parent = Slider_2
TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0, 0, -0.0769230798, 0)
TextLabel_10.Size = UDim2.new(0, 153, 0, 22)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "My Slider Name Here"
TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
TextLabel_10.TextSize = 18

Background_2.Name = "Background"
Background_2.Parent = Slider_2
Background_2.BackgroundColor3 = Color3.new(1, 1, 1)
Background_2.BorderColor3 = Color3.new(0, 0, 0)
Background_2.BorderSizePixel = 0
Background_2.Position = UDim2.new(0.0485231727, 0, 0.487179488, 0)
Background_2.Size = UDim2.new(0, 215, 0, 15)

UICorner_11.Parent = Background_2
UICorner_11.CornerRadius = UDim.new(0, 5)

Fill_2.Name = "Fill"
Fill_2.Parent = Background_2
Fill_2.BackgroundColor3 = Color3.new(0, 0, 0)
Fill_2.BorderColor3 = Color3.new(0, 0, 0)
Fill_2.BorderSizePixel = 0
Fill_2.Size = UDim2.new(0, 0, 0, 15)

UICorner_12.Parent = Fill_2
UICorner_12.CornerRadius = UDim.new(0, 5)

Trigger_2.Name = "Trigger"
Trigger_2.Parent = Background_2
Trigger_2.BackgroundColor3 = Color3.new(1, 1, 1)
Trigger_2.BackgroundTransparency = 1
Trigger_2.BorderColor3 = Color3.new(0, 0, 0)
Trigger_2.BorderSizePixel = 0
Trigger_2.Size = UDim2.new(0, 215, 0, 15)
Trigger_2.Font = Enum.Font.SourceSans
Trigger_2.Text = ""
Trigger_2.TextColor3 = Color3.new(0, 0, 0)
Trigger_2.TextSize = 14

Amount_2.Name = "Amount"
Amount_2.Parent = Background_2
Amount_2.BackgroundColor3 = Color3.new(1, 1, 1)
Amount_2.BackgroundTransparency = 1
Amount_2.BorderColor3 = Color3.new(0, 0, 0)
Amount_2.BorderSizePixel = 0
Amount_2.Size = UDim2.new(0, 215, 0, 15)
Amount_2.Font = Enum.Font.SourceSans
Amount_2.Text = "0"
Amount_2.TextColor3 = Color3.new(0.560784, 0, 0.00784314)
Amount_2.TextSize = 18

MyDropdownMenu_2.Name = "MyDropdownMenu"
MyDropdownMenu_2.Parent = SectionName_4
MyDropdownMenu_2.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
MyDropdownMenu_2.BorderColor3 = Color3.new(0, 0, 0)
MyDropdownMenu_2.BorderSizePixel = 0
MyDropdownMenu_2.Position = UDim2.new(0.0726495758, 0, 0.817543864, 0)
MyDropdownMenu_2.Size = UDim2.new(0, 200, 0, 32)
MyDropdownMenu_2.Font = Enum.Font.SourceSans
MyDropdownMenu_2.Text = "My Dropdown Menu!"
MyDropdownMenu_2.TextColor3 = Color3.new(1, 1, 1)
MyDropdownMenu_2.TextSize = 21

MenuFrame_2.Name = "MenuFrame"
MenuFrame_2.Parent = MyDropdownMenu_2
MenuFrame_2.BackgroundColor3 = Color3.new(0.054902, 0.054902, 0.054902)
MenuFrame_2.BackgroundTransparency = 1
MenuFrame_2.BorderColor3 = Color3.new(0, 0, 0)
MenuFrame_2.BorderSizePixel = 0
MenuFrame_2.Position = UDim2.new(0, 0, 1, 0)
MenuFrame_2.Size = UDim2.new(0, 200, 0, 5)
MenuFrame_2.Visible = false

UIListLayout_4.Parent = MenuFrame_2
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

ExampleMenuButton_2.Name = "ExampleMenuButton"
ExampleMenuButton_2.Parent = MenuFrame_2
ExampleMenuButton_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
ExampleMenuButton_2.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuButton_2.BorderSizePixel = 0
ExampleMenuButton_2.Position = UDim2.new(0, 0, 0.03539823, 0)
ExampleMenuButton_2.Size = UDim2.new(0, 200, 0, 28)
ExampleMenuButton_2.Font = Enum.Font.SourceSans
ExampleMenuButton_2.Text = "Menu Button Type"
ExampleMenuButton_2.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuButton_2.TextSize = 18

ExampleMenuLabel_2.Name = "ExampleMenuLabel"
ExampleMenuLabel_2.Parent = MenuFrame_2
ExampleMenuLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel_2.BackgroundTransparency = 1
ExampleMenuLabel_2.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuLabel_2.BorderSizePixel = 0
ExampleMenuLabel_2.Position = UDim2.new(0.0125000002, 0, 0.0929203555, 0)
ExampleMenuLabel_2.Size = UDim2.new(0, 195, 0, 28)
ExampleMenuLabel_2.Font = Enum.Font.SourceSans
ExampleMenuLabel_2.Text = "My Menu Label Example Here"
ExampleMenuLabel_2.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel_2.TextSize = 18

Toggle_2.Name = "Toggle"
Toggle_2.Parent = SectionName_4
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.BorderColor3 = Color3.new(0, 0, 0)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(-0.0341880359, 0, 0.873754144, 0)
Toggle_2.Size = UDim2.new(0, 237, 0, 38)

UICorner_13.Parent = TabName_2
UICorner_13.CornerRadius = UDim.new(0, 12)

UICornerFix_4.Name = "UICornerFix"
UICornerFix_4.Parent = TabNameTopbar_2
UICornerFix_4.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
UICornerFix_4.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix_4.BorderSizePixel = 0
UICornerFix_4.Position = UDim2.new(0, 0, 1.01999998, 0)
UICornerFix_4.Size = UDim2.new(0, 236, 0, 8)

UICorner_14.Parent = TabNameTopbar_2
UICorner_14.CornerRadius = UDim.new(0, 12)

TabNameTopbar_3.Name = "TabNameTopbar"
TabNameTopbar_3.Parent = NostalgicMM2
TabNameTopbar_3.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TabNameTopbar_3.BorderColor3 = Color3.new(0, 0, 0)
TabNameTopbar_3.BorderSizePixel = 0
TabNameTopbar_3.Position = UDim2.new(0.299781978, 0, 0.0145800598, -2)
TabNameTopbar_3.Size = UDim2.new(0, 236, 0, 50)

TextLabel_11.Parent = TabNameTopbar_3
TextLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_11.BackgroundTransparency = 1
TextLabel_11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0, 0, 0.25999999, 0)
TextLabel_11.Size = UDim2.new(0, 235, 0, 25)
TextLabel_11.Font = Enum.Font.Nunito
TextLabel_11.Text = "3RD TABNAME HERE"
TextLabel_11.TextColor3 = Color3.new(1, 1, 1)
TextLabel_11.TextSize = 25

UICornerFix_5.Name = "UICornerFix"
UICornerFix_5.Parent = TabNameTopbar_3
UICornerFix_5.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
UICornerFix_5.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix_5.BorderSizePixel = 0
UICornerFix_5.Position = UDim2.new(0, 0, 0.74000001, 0)
UICornerFix_5.Size = UDim2.new(0, 236, 0, 14)

TabName_3.Name = "TabName"
TabName_3.Parent = TabNameTopbar_3
TabName_3.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TabName_3.BorderColor3 = Color3.new(0, 0, 0)
TabName_3.BorderSizePixel = 0
TabName_3.Position = UDim2.new(0, 0, 1, 0)
TabName_3.Size = UDim2.new(0, 236, 0, 330)

SectionName_5.Name = "SectionName"
SectionName_5.Parent = TabName_3
SectionName_5.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SectionName_5.BorderColor3 = Color3.new(0, 0, 0)
SectionName_5.BorderSizePixel = 0
SectionName_5.Position = UDim2.new(0.0425531901, 0, 0.0248155612, 0)
SectionName_5.Size = UDim2.new(0, 216, 0, 47)

UICorner_15.Parent = SectionName_5
UICorner_15.CornerRadius = UDim.new(0, 6)

TextLabel_12.Parent = SectionName_5
TextLabel_12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_12.BackgroundTransparency = 1
TextLabel_12.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.0694444478, 0, 0.218723372, 0)
TextLabel_12.Size = UDim2.new(0, 182, 0, 25)
TextLabel_12.Font = Enum.Font.Roboto
TextLabel_12.Text = "my section name"
TextLabel_12.TextColor3 = Color3.new(1, 1, 1)
TextLabel_12.TextSize = 20

SectionName_6.Name = "SectionName"
SectionName_6.Parent = SectionName_5
SectionName_6.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SectionName_6.BorderColor3 = Color3.new(0, 0, 0)
SectionName_6.BorderSizePixel = 0
SectionName_6.Position = UDim2.new(-0.0462962948, 0, 1.12766027, 0)
SectionName_6.Size = UDim2.new(0, 234, 0, 264)

UIListLayout_5.Parent = SectionName_6
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 6)

ButtonName1_3.Name = "ButtonName1"
ButtonName1_3.Parent = SectionName_6
ButtonName1_3.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName1_3.BorderColor3 = Color3.new(0, 0, 0)
ButtonName1_3.BorderSizePixel = 0
ButtonName1_3.Position = UDim2.new(0.110638298, 0, 0, 0)
ButtonName1_3.Size = UDim2.new(0, 183, 0, 39)
ButtonName1_3.Font = Enum.Font.Roboto
ButtonName1_3.Text = "My Button Name Here"
ButtonName1_3.TextColor3 = Color3.new(1, 1, 1)
ButtonName1_3.TextSize = 20

UICorner_16.Parent = ButtonName1_3
UICorner_16.CornerRadius = UDim.new(0, 4)

ButtonName2_3.Name = "ButtonName2"
ButtonName2_3.Parent = SectionName_6
ButtonName2_3.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ButtonName2_3.BorderColor3 = Color3.new(0, 0, 0)
ButtonName2_3.BorderSizePixel = 0
ButtonName2_3.Position = UDim2.new(-0.190170944, 0, -0.354385972, 0)
ButtonName2_3.Size = UDim2.new(0, 183, 0, 39)
ButtonName2_3.Font = Enum.Font.Roboto
ButtonName2_3.Text = "My Button Name Here"
ButtonName2_3.TextColor3 = Color3.new(1, 1, 1)
ButtonName2_3.TextSize = 20

UICorner_17.Parent = ButtonName2_3
UICorner_17.CornerRadius = UDim.new(0, 4)

Input_3.Name = "Input"
Input_3.Parent = SectionName_6
Input_3.BackgroundColor3 = Color3.new(1, 1, 1)
Input_3.BackgroundTransparency = 1
Input_3.BorderColor3 = Color3.new(0, 0, 0)
Input_3.BorderSizePixel = 0
Input_3.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Input_3.Size = UDim2.new(0, 237, 0, 39)

inputsName_3.Name = "inputsName"
inputsName_3.Parent = Input_3
inputsName_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
inputsName_3.BorderColor3 = Color3.new(0, 0, 0)
inputsName_3.BorderSizePixel = 0
inputsName_3.ClipsDescendants = true
inputsName_3.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
inputsName_3.Size = UDim2.new(0, 74, 0, 30)
inputsName_3.ClearTextOnFocus = false
inputsName_3.Font = Enum.Font.Roboto
inputsName_3.PlaceholderColor3 = Color3.new(1, 1, 1)
inputsName_3.PlaceholderText = "..."
inputsName_3.Text = ""
inputsName_3.TextColor3 = Color3.new(1, 1, 1)
inputsName_3.TextSize = 16
inputsName_3.TextWrapped = true

TextLabel_13.Parent = Input_3
TextLabel_13.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_13.BackgroundTransparency = 1
TextLabel_13.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.00843881816, 0, 0.179487184, 0)
TextLabel_13.Size = UDim2.new(0, 139, 0, 23)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "My Input Name Here"
TextLabel_13.TextColor3 = Color3.new(1, 1, 1)
TextLabel_13.TextSize = 18

Keybind_3.Name = "Keybind"
Keybind_3.Parent = SectionName_6
Keybind_3.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind_3.BackgroundTransparency = 1
Keybind_3.BorderColor3 = Color3.new(0, 0, 0)
Keybind_3.BorderSizePixel = 0
Keybind_3.Position = UDim2.new(-0.00641025649, 0, 0.456140339, 0)
Keybind_3.Size = UDim2.new(0, 237, 0, 39)

KeybindsName_3.Name = "KeybindsName"
KeybindsName_3.Parent = Keybind_3
KeybindsName_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
KeybindsName_3.BorderColor3 = Color3.new(0, 0, 0)
KeybindsName_3.BorderSizePixel = 0
KeybindsName_3.ClipsDescendants = true
KeybindsName_3.Position = UDim2.new(0.645569623, 0, 0.102564104, 0)
KeybindsName_3.Size = UDim2.new(0, 74, 0, 30)
KeybindsName_3.ClearTextOnFocus = false
KeybindsName_3.Font = Enum.Font.Roboto
KeybindsName_3.PlaceholderColor3 = Color3.new(1, 1, 1)
KeybindsName_3.Text = "None"
KeybindsName_3.TextColor3 = Color3.new(1, 1, 1)
KeybindsName_3.TextSize = 16
KeybindsName_3.TextWrapped = true

TextLabel_14.Parent = Keybind_3
TextLabel_14.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_14.BackgroundTransparency = 1
TextLabel_14.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0, 0, 0.205128208, 0)
TextLabel_14.Size = UDim2.new(0, 153, 0, 21)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "My Keybind Name Here"
TextLabel_14.TextColor3 = Color3.new(1, 1, 1)
TextLabel_14.TextSize = 18

Slider_3.Name = "Slider"
Slider_3.Parent = SectionName_6
Slider_3.BackgroundColor3 = Color3.new(1, 1, 1)
Slider_3.BackgroundTransparency = 1
Slider_3.BorderColor3 = Color3.new(0, 0, 0)
Slider_3.BorderSizePixel = 0
Slider_3.Position = UDim2.new(-0.00427350448, 0, 0.315789461, 0)
Slider_3.Size = UDim2.new(0, 237, 0, 39)

TextLabel_15.Parent = Slider_3
TextLabel_15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_15.BackgroundTransparency = 1
TextLabel_15.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0, 0, -0.0769230798, 0)
TextLabel_15.Size = UDim2.new(0, 153, 0, 22)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "My Slider Name Here"
TextLabel_15.TextColor3 = Color3.new(1, 1, 1)
TextLabel_15.TextSize = 18

Background_3.Name = "Background"
Background_3.Parent = Slider_3
Background_3.BackgroundColor3 = Color3.new(1, 1, 1)
Background_3.BorderColor3 = Color3.new(0, 0, 0)
Background_3.BorderSizePixel = 0
Background_3.Position = UDim2.new(0.0485231727, 0, 0.487179488, 0)
Background_3.Size = UDim2.new(0, 215, 0, 15)

UICorner_18.Parent = Background_3
UICorner_18.CornerRadius = UDim.new(0, 5)

Fill_3.Name = "Fill"
Fill_3.Parent = Background_3
Fill_3.BackgroundColor3 = Color3.new(0, 0, 0)
Fill_3.BorderColor3 = Color3.new(0, 0, 0)
Fill_3.BorderSizePixel = 0
Fill_3.Size = UDim2.new(0, 0, 0, 15)

UICorner_19.Parent = Fill_3
UICorner_19.CornerRadius = UDim.new(0, 5)

Trigger_3.Name = "Trigger"
Trigger_3.Parent = Background_3
Trigger_3.BackgroundColor3 = Color3.new(1, 1, 1)
Trigger_3.BackgroundTransparency = 1
Trigger_3.BorderColor3 = Color3.new(0, 0, 0)
Trigger_3.BorderSizePixel = 0
Trigger_3.Size = UDim2.new(0, 215, 0, 15)
Trigger_3.Font = Enum.Font.SourceSans
Trigger_3.Text = ""
Trigger_3.TextColor3 = Color3.new(0, 0, 0)
Trigger_3.TextSize = 14

Amount_3.Name = "Amount"
Amount_3.Parent = Background_3
Amount_3.BackgroundColor3 = Color3.new(1, 1, 1)
Amount_3.BackgroundTransparency = 1
Amount_3.BorderColor3 = Color3.new(0, 0, 0)
Amount_3.BorderSizePixel = 0
Amount_3.Size = UDim2.new(0, 215, 0, 15)
Amount_3.Font = Enum.Font.SourceSans
Amount_3.Text = "0"
Amount_3.TextColor3 = Color3.new(0.560784, 0, 0.00784314)
Amount_3.TextSize = 18

MyDropdownMenu_3.Name = "MyDropdownMenu"
MyDropdownMenu_3.Parent = SectionName_6
MyDropdownMenu_3.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
MyDropdownMenu_3.BorderColor3 = Color3.new(0, 0, 0)
MyDropdownMenu_3.BorderSizePixel = 0
MyDropdownMenu_3.Position = UDim2.new(0.0726495758, 0, 0.817543864, 0)
MyDropdownMenu_3.Size = UDim2.new(0, 200, 0, 32)
MyDropdownMenu_3.Font = Enum.Font.SourceSans
MyDropdownMenu_3.Text = "My Dropdown Menu!"
MyDropdownMenu_3.TextColor3 = Color3.new(1, 1, 1)
MyDropdownMenu_3.TextSize = 21

MenuFrame_3.Name = "MenuFrame"
MenuFrame_3.Parent = MyDropdownMenu_3
MenuFrame_3.BackgroundColor3 = Color3.new(0.054902, 0.054902, 0.054902)
MenuFrame_3.BackgroundTransparency = 1
MenuFrame_3.BorderColor3 = Color3.new(0, 0, 0)
MenuFrame_3.BorderSizePixel = 0
MenuFrame_3.Position = UDim2.new(0, 0, 1, 0)
MenuFrame_3.Size = UDim2.new(0, 200, 0, 5)
MenuFrame_3.Visible = false

UIListLayout_6.Parent = MenuFrame_3
UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

ExampleMenuButton_3.Name = "ExampleMenuButton"
ExampleMenuButton_3.Parent = MenuFrame_3
ExampleMenuButton_3.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
ExampleMenuButton_3.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuButton_3.BorderSizePixel = 0
ExampleMenuButton_3.Position = UDim2.new(0, 0, 0.03539823, 0)
ExampleMenuButton_3.Size = UDim2.new(0, 200, 0, 28)
ExampleMenuButton_3.Font = Enum.Font.SourceSans
ExampleMenuButton_3.Text = "Menu Button Type"
ExampleMenuButton_3.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuButton_3.TextSize = 18

ExampleMenuLabel_3.Name = "ExampleMenuLabel"
ExampleMenuLabel_3.Parent = MenuFrame_3
ExampleMenuLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel_3.BackgroundTransparency = 1
ExampleMenuLabel_3.BorderColor3 = Color3.new(0, 0, 0)
ExampleMenuLabel_3.BorderSizePixel = 0
ExampleMenuLabel_3.Position = UDim2.new(0.0125000002, 0, 0.0929203555, 0)
ExampleMenuLabel_3.Size = UDim2.new(0, 195, 0, 28)
ExampleMenuLabel_3.Font = Enum.Font.SourceSans
ExampleMenuLabel_3.Text = "My Menu Label Example Here"
ExampleMenuLabel_3.TextColor3 = Color3.new(1, 1, 1)
ExampleMenuLabel_3.TextSize = 18

Toggle_3.Name = "Toggle"
Toggle_3.Parent = SectionName_6
Toggle_3.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_3.BackgroundTransparency = 1
Toggle_3.BorderColor3 = Color3.new(0, 0, 0)
Toggle_3.BorderSizePixel = 0
Toggle_3.Position = UDim2.new(-0.0341880359, 0, 0.873754144, 0)
Toggle_3.Size = UDim2.new(0, 237, 0, 38)

UICorner_20.Parent = TabName_3
UICorner_20.CornerRadius = UDim.new(0, 12)

UICornerFix_6.Name = "UICornerFix"
UICornerFix_6.Parent = TabNameTopbar_3
UICornerFix_6.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
UICornerFix_6.BorderColor3 = Color3.new(0, 0, 0)
UICornerFix_6.BorderSizePixel = 0
UICornerFix_6.Position = UDim2.new(0, 0, 1.01999998, 0)
UICornerFix_6.Size = UDim2.new(0, 236, 0, 8)

UICorner_21.Parent = TabNameTopbar_3
UICorner_21.CornerRadius = UDim.new(0, 12)

-- Scripts

local function RPXKOR_fake_script() 
	local script = Instance.new('LocalScript', ButtonName1)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(RPXKOR_fake_script)()
local function YUUNM_fake_script()
	local script = Instance.new('LocalScript', ButtonName2)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(YUUNM_fake_script)()
local function LOUX_fake_script()
	local script = Instance.new('LocalScript', KeybindsName)

	local UIS = game:GetService("UserInputService")
	local textBox = script.Parent
	assert(textBox and textBox:IsA("TextBox"), "Place this LocalScript inside a TextBox")
	
	local chosenKey
	
	local function KeybindActivated()
		-- calback
	end
	
	local captureConn
	
	textBox.Focused:Connect(function()
		textBox.Text = "..."
		if captureConn then
			captureConn:Disconnect()
			captureConn = nil
		end
	
		captureConn = UIS.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
			textBox:ReleaseFocus()
			chosenKey = input.KeyCode
			textBox.Text = chosenKey.Name
			captureConn:Disconnect()
			captureConn = nil
		end)
	end)
	
	while wait(nil) do -- makes it so that itll auto unselect
		textBox:ReleaseFocus()
	end
	
	UIS.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if not chosenKey then return end
		if input.KeyCode == chosenKey then
			KeybindActivated()
		end
	end)
	
end
coroutine.wrap(LOUX_fake_script)()
local function GBBRNS_fake_script()
	local script = Instance.new('LocalScript', Background)
	
	local background = script.Parent
	local fill = background:WaitForChild("Fill")
	local trigger = background:WaitForChild("Trigger")
	local amountLabel = background:WaitForChild("Amount")
	
	local UIS = game:GetService("UserInputService")
	local RS = game:GetService("RunService")
	
	-- Settings
	local MIN_VALUE = 0
	local MAX_VALUE = 100
	local currentValue = 0
	
	-- State
	local dragging = false
	
	-- Callback
	local function onValueChanged(val)
		-- UI Slider Functionality
	end
	
	-- Helper: converts X pos to value
	local function getValueFromX(x)
		local bgAbsPos = background.AbsolutePosition.X
		local bgAbsSize = background.AbsoluteSize.X
		local rel = math.clamp((x - bgAbsPos) / bgAbsSize, 0, 1)
		return MIN_VALUE + rel * (MAX_VALUE - MIN_VALUE), rel
	end
	
	-- Update visuals (always use this one)
	local function updateVisuals(value, rel)
		currentValue = value
		fill.Size = UDim2.new(rel, 0, 1, 0)
		trigger.Position = UDim2.new(rel, -trigger.AbsoluteSize.X/2, 0.5, -trigger.AbsoluteSize.Y/2)
		amountLabel.Text = tostring(math.floor(value))
		onValueChanged(value)
	end
	
	-- Mouse drag start
	trigger.MouseButton1Down:Connect(function()
		dragging = true
	end)
	
	-- Stop dragging on release
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	-- Update while dragging
	RS.RenderStepped:Connect(function()
		if dragging then
			local mouse = UIS:GetMouseLocation()
			local val, rel = getValueFromX(mouse.X)
			updateVisuals(val, rel)
		end
	end)
end
coroutine.wrap(GBBRNS_fake_script)()
local function XAQMW_fake_script() -- MyDropdownMenu.DropdownFunc 
	local script = Instance.new('LocalScript', MyDropdownMenu)

	local TweenService = game:GetService("TweenService")
	
	local function getTransparencyProperty(obj)
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			return "TextTransparency"
		elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
			return "ImageTransparency"
		elseif obj:IsA("Frame") then
			return "BackgroundTransparency"
		end
		return nil
	end
	
	local function fadeFrame(frame, fadeIn, tweenInfo)
		tweenInfo = tweenInfo or TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local objects = {}
		for _, obj in ipairs(frame:GetDescendants()) do
			local prop = getTransparencyProperty(obj)
			if prop then
				table.insert(objects, {obj = obj, prop = prop})
			end
		end
	
		-- Include the root frame too
		table.insert(objects, {obj = frame, prop = "BackgroundTransparency"})
	
		if fadeIn then
			frame.Visible = true
			for _, data in ipairs(objects) do
				data.obj[data.prop] = 1 -- start invisible
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 0}):Play()
			end
		else
			for _, data in ipairs(objects) do
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 1}):Play()
			end
			task.delay(tweenInfo.Time, function()
				frame.Visible = false
			end)
		end
	end
	
	-- Example usage
	local btn = script.Parent
	local menu = script.Parent.MenuFrame
	local open = false
	
	btn.MouseButton1Click:Connect(function()
		if open then
			fadeFrame(menu, false) -- fade out
		else
			fadeFrame(menu, true)  -- fade in
		end
		open = not open
	end)
	
	btn.AutoButtonColor = false
	
end
coroutine.wrap(XAQMW_fake_script)()
local function HQHNNK_fake_script() -- MenuFrame.ResizeElements 
	local script = Instance.new('LocalScript', MenuFrame)

	-- MainFrame (your container)
	local MainFrame = script.Parent
	
	-- Create layout if not already there
	local layout = MainFrame:FindFirstChildOfClass("UIListLayout")
	if not layout then
		layout = Instance.new("UIListLayout")
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Parent = MainFrame
	end
	
	-- Optional: Add padding between children
	local padding = MainFrame:FindFirstChildOfClass("UIPadding")
	if not padding then
		padding = Instance.new("UIPadding")
		padding.PaddingTop = UDim.new(0, 5)
		padding.PaddingBottom = UDim.new(0, 5)
		padding.Parent = MainFrame
	end
	
	-- Auto-scaler
	local function updateSize()
		MainFrame.Size = UDim2.new(
			MainFrame.Size.Y.Scale, 
			MainFrame.Size.X.Offset,
			0, 
			layout.AbsoluteContentSize.Y + padding.PaddingTop.Offset + padding.PaddingBottom.Offset
		)
	end
	
	-- Hook into changes
	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	
	-- Initial call
	updateSize()
	
end
coroutine.wrap(HQHNNK_fake_script)()
local function VTBX_fake_script() -- ExampleMenuButton.ButtonEffect 
	local script = Instance.new('LocalScript', ExampleMenuButton)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(VTBX_fake_script)()
local function XMIMBNQ_fake_script() -- SectionName_2.scaleUI 
	local script = Instance.new('LocalScript', SectionName_2)

	local frame = script.Parent
	local listLayout = frame:WaitForChild("UIListLayout")
	
	local function updateSize()
		local PADDING = -50
		frame.Size = UDim2.new(
			frame.Size.X.Scale,
			frame.Size.X.Offset,
			0,
			listLayout.AbsoluteContentSize.Y + PADDING
		)
	end
	
	listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	updateSize()
	
end
coroutine.wrap(XMIMBNQ_fake_script)()
local function WKTN_fake_script() -- ButtonName1_2.ButtonEffect 
	local script = Instance.new('LocalScript', ButtonName1_2)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(WKTN_fake_script)()
local function DJQII_fake_script() -- ButtonName2_2.ButtonEffect 
	local script = Instance.new('LocalScript', ButtonName2_2)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(DJQII_fake_script)()
local function LCON_fake_script() -- KeybindsName_2.keybind 
	local script = Instance.new('LocalScript', KeybindsName_2)

	local UIS = game:GetService("UserInputService")
	local textBox = script.Parent
	assert(textBox and textBox:IsA("TextBox"), "Place this LocalScript inside a TextBox")
	
	local chosenKey
	
	local function KeybindActivated()
		-- UI CODE
	end
	
	local captureConn
	
	textBox.Focused:Connect(function()
		textBox.Text = "..."
		if captureConn then
			captureConn:Disconnect()
			captureConn = nil
		end
	
		captureConn = UIS.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
			textBox:ReleaseFocus()
			chosenKey = input.KeyCode
			textBox.Text = chosenKey.Name
			captureConn:Disconnect()
			captureConn = nil
		end)
	end)
	
	while wait(nil) do -- makes it so that itll auto unselect
		textBox:ReleaseFocus()
	end
	
	UIS.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if not chosenKey then return end
		if input.KeyCode == chosenKey then
			KeybindActivated()
		end
	end)
	
end
coroutine.wrap(LCON_fake_script)()
local function RYHCBJ_fake_script() -- Background_2.SliderScript 
	local script = Instance.new('LocalScript', Background_2)

	-- LocalScript inside "Script" under Background
	
	local background = script.Parent
	local fill = background:WaitForChild("Fill")
	local trigger = background:WaitForChild("Trigger")
	local amountLabel = background:WaitForChild("Amount")
	
	local UIS = game:GetService("UserInputService")
	local RS = game:GetService("RunService")
	
	-- Settings
	local MIN_VALUE = 0
	local MAX_VALUE = 100
	local currentValue = 0
	
	-- State
	local dragging = false
	
	-- Callback
	local function onValueChanged(val)
		-- UI Slider Functionality
	end
	
	-- Helper: converts X pos to value
	local function getValueFromX(x)
		local bgAbsPos = background.AbsolutePosition.X
		local bgAbsSize = background.AbsoluteSize.X
		local rel = math.clamp((x - bgAbsPos) / bgAbsSize, 0, 1)
		return MIN_VALUE + rel * (MAX_VALUE - MIN_VALUE), rel
	end
	
	-- Update visuals (always use this one)
	local function updateVisuals(value, rel)
		currentValue = value
		fill.Size = UDim2.new(rel, 0, 1, 0)
		trigger.Position = UDim2.new(rel, -trigger.AbsoluteSize.X/2, 0.5, -trigger.AbsoluteSize.Y/2)
		amountLabel.Text = tostring(math.floor(value))
		onValueChanged(value)
	end
	
	-- Mouse drag start
	trigger.MouseButton1Down:Connect(function()
		dragging = true
	end)
	
	-- Stop dragging on release
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	-- Update while dragging
	RS.RenderStepped:Connect(function()
		if dragging then
			local mouse = UIS:GetMouseLocation()
			local val, rel = getValueFromX(mouse.X)
			updateVisuals(val, rel)
		end
	end)
end
coroutine.wrap(RYHCBJ_fake_script)()
local function LXPDMT_fake_script() -- MyDropdownMenu_2.DropdownFunc 
	local script = Instance.new('LocalScript', MyDropdownMenu_2)

	local TweenService = game:GetService("TweenService")
	
	local function getTransparencyProperty(obj)
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			return "TextTransparency"
		elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
			return "ImageTransparency"
		elseif obj:IsA("Frame") then
			return "BackgroundTransparency"
		end
		return nil
	end
	
	local function fadeFrame(frame, fadeIn, tweenInfo)
		tweenInfo = tweenInfo or TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local objects = {}
		for _, obj in ipairs(frame:GetDescendants()) do
			local prop = getTransparencyProperty(obj)
			if prop then
				table.insert(objects, {obj = obj, prop = prop})
			end
		end
	
		-- Include the root frame too
		table.insert(objects, {obj = frame, prop = "BackgroundTransparency"})
	
		if fadeIn then
			frame.Visible = true
			for _, data in ipairs(objects) do
				data.obj[data.prop] = 1 -- start invisible
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 0}):Play()
			end
		else
			for _, data in ipairs(objects) do
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 1}):Play()
			end
			task.delay(tweenInfo.Time, function()
				frame.Visible = false
			end)
		end
	end
	
	-- Example usage
	local btn = script.Parent
	local menu = script.Parent.MenuFrame
	local open = false
	
	btn.MouseButton1Click:Connect(function()
		if open then
			fadeFrame(menu, false) -- fade out
		else
			fadeFrame(menu, true)  -- fade in
		end
		open = not open
	end)
	
	btn.AutoButtonColor = false
	
end
coroutine.wrap(LXPDMT_fake_script)()
local function VBMKJ_fake_script() -- MenuFrame_2.ResizeElements 
	local script = Instance.new('LocalScript', MenuFrame_2)

	-- MainFrame (your container)
	local MainFrame = script.Parent
	
	-- Create layout if not already there
	local layout = MainFrame:FindFirstChildOfClass("UIListLayout")
	if not layout then
		layout = Instance.new("UIListLayout")
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Parent = MainFrame
	end
	
	-- Optional: Add padding between children
	local padding = MainFrame:FindFirstChildOfClass("UIPadding")
	if not padding then
		padding = Instance.new("UIPadding")
		padding.PaddingTop = UDim.new(0, 5)
		padding.PaddingBottom = UDim.new(0, 5)
		padding.Parent = MainFrame
	end
	
	-- Auto-scaler
	local function updateSize()
		MainFrame.Size = UDim2.new(
			MainFrame.Size.Y.Scale, 
			MainFrame.Size.X.Offset,
			0, 
			layout.AbsoluteContentSize.Y + padding.PaddingTop.Offset + padding.PaddingBottom.Offset
		)
	end
	
	-- Hook into changes
	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	
	-- Initial call
	updateSize()
	
end
coroutine.wrap(VBMKJ_fake_script)()
local function PAMV_fake_script() -- ExampleMenuButton_2.ButtonEffect 
	local script = Instance.new('LocalScript', ExampleMenuButton_2)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(PAMV_fake_script)()
local function EUQMFM_fake_script() -- SectionName_4.scaleUI 
	local script = Instance.new('LocalScript', SectionName_4)

	local frame = script.Parent
	local listLayout = frame:WaitForChild("UIListLayout")
	
	local function updateSize()
		local PADDING = -50
		frame.Size = UDim2.new(
			frame.Size.X.Scale,
			frame.Size.X.Offset,
			0,
			listLayout.AbsoluteContentSize.Y + PADDING
		)
	end
	
	listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	updateSize()
	
end
coroutine.wrap(EUQMFM_fake_script)()
local function KOMJHCF_fake_script() -- ButtonName1_3.ButtonEffect 
	local script = Instance.new('LocalScript', ButtonName1_3)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(KOMJHCF_fake_script)()
local function NJAARYJ_fake_script() -- ButtonName2_3.ButtonEffect 
	local script = Instance.new('LocalScript', ButtonName2_3)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(NJAARYJ_fake_script)()
local function ALSMX_fake_script() -- KeybindsName_3.keybind 
	local script = Instance.new('LocalScript', KeybindsName_3)

	local UIS = game:GetService("UserInputService")
	local textBox = script.Parent
	assert(textBox and textBox:IsA("TextBox"), "Place this LocalScript inside a TextBox")
	
	local chosenKey
	
	local function KeybindActivated()
		-- UI CODE
	end
	
	local captureConn
	
	textBox.Focused:Connect(function()
		textBox.Text = "..."
		if captureConn then
			captureConn:Disconnect()
			captureConn = nil
		end
	
		captureConn = UIS.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
			textBox:ReleaseFocus()
			chosenKey = input.KeyCode
			textBox.Text = chosenKey.Name
			captureConn:Disconnect()
			captureConn = nil
		end)
	end)
	
	while wait(nil) do -- makes it so that itll auto unselect
		textBox:ReleaseFocus()
	end
	
	UIS.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if not chosenKey then return end
		if input.KeyCode == chosenKey then
			KeybindActivated()
		end
	end)
	
end
coroutine.wrap(ALSMX_fake_script)()
local function WJARM_fake_script() -- Background_3.SliderScript 
	local script = Instance.new('LocalScript', Background_3)

	-- LocalScript inside "Script" under Background
	
	local background = script.Parent
	local fill = background:WaitForChild("Fill")
	local trigger = background:WaitForChild("Trigger")
	local amountLabel = background:WaitForChild("Amount")
	
	local UIS = game:GetService("UserInputService")
	local RS = game:GetService("RunService")
	
	-- Settings
	local MIN_VALUE = 0
	local MAX_VALUE = 100
	local currentValue = 0
	
	-- State
	local dragging = false
	
	-- Callback
	local function onValueChanged(val)
		-- UI Slider Functionality
	end
	
	-- Helper: converts X pos to value
	local function getValueFromX(x)
		local bgAbsPos = background.AbsolutePosition.X
		local bgAbsSize = background.AbsoluteSize.X
		local rel = math.clamp((x - bgAbsPos) / bgAbsSize, 0, 1)
		return MIN_VALUE + rel * (MAX_VALUE - MIN_VALUE), rel
	end
	
	-- Update visuals (always use this one)
	local function updateVisuals(value, rel)
		currentValue = value
		fill.Size = UDim2.new(rel, 0, 1, 0)
		trigger.Position = UDim2.new(rel, -trigger.AbsoluteSize.X/2, 0.5, -trigger.AbsoluteSize.Y/2)
		amountLabel.Text = tostring(math.floor(value))
		onValueChanged(value)
	end
	
	-- Mouse drag start
	trigger.MouseButton1Down:Connect(function()
		dragging = true
	end)
	
	-- Stop dragging on release
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	-- Update while dragging
	RS.RenderStepped:Connect(function()
		if dragging then
			local mouse = UIS:GetMouseLocation()
			local val, rel = getValueFromX(mouse.X)
			updateVisuals(val, rel)
		end
	end)
end
coroutine.wrap(WJARM_fake_script)()
local function DSHOGU_fake_script() -- MyDropdownMenu_3.DropdownFunc 
	local script = Instance.new('LocalScript', MyDropdownMenu_3)

	local TweenService = game:GetService("TweenService")
	
	local function getTransparencyProperty(obj)
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			return "TextTransparency"
		elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
			return "ImageTransparency"
		elseif obj:IsA("Frame") then
			return "BackgroundTransparency"
		end
		return nil
	end
	
	local function fadeFrame(frame, fadeIn, tweenInfo)
		tweenInfo = tweenInfo or TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local objects = {}
		for _, obj in ipairs(frame:GetDescendants()) do
			local prop = getTransparencyProperty(obj)
			if prop then
				table.insert(objects, {obj = obj, prop = prop})
			end
		end
	
		-- Include the root frame too
		table.insert(objects, {obj = frame, prop = "BackgroundTransparency"})
	
		if fadeIn then
			frame.Visible = true
			for _, data in ipairs(objects) do
				data.obj[data.prop] = 1 -- start invisible
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 0}):Play()
			end
		else
			for _, data in ipairs(objects) do
				TweenService:Create(data.obj, tweenInfo, {[data.prop] = 1}):Play()
			end
			task.delay(tweenInfo.Time, function()
				frame.Visible = false
			end)
		end
	end
	
	-- Example usage
	local btn = script.Parent
	local menu = script.Parent.MenuFrame
	local open = false
	
	btn.MouseButton1Click:Connect(function()
		if open then
			fadeFrame(menu, false) -- fade out
		else
			fadeFrame(menu, true)  -- fade in
		end
		open = not open
	end)
	
	btn.AutoButtonColor = false
	
end
coroutine.wrap(DSHOGU_fake_script)()
local function WBJEEQN_fake_script() -- MenuFrame_3.ResizeElements 
	local script = Instance.new('LocalScript', MenuFrame_3)

	-- MainFrame (your container)
	local MainFrame = script.Parent
	
	-- Create layout if not already there
	local layout = MainFrame:FindFirstChildOfClass("UIListLayout")
	if not layout then
		layout = Instance.new("UIListLayout")
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Parent = MainFrame
	end
	
	-- Optional: Add padding between children
	local padding = MainFrame:FindFirstChildOfClass("UIPadding")
	if not padding then
		padding = Instance.new("UIPadding")
		padding.PaddingTop = UDim.new(0, 5)
		padding.PaddingBottom = UDim.new(0, 5)
		padding.Parent = MainFrame
	end
	
	-- Auto-scaler
	local function updateSize()
		MainFrame.Size = UDim2.new(
			MainFrame.Size.Y.Scale, 
			MainFrame.Size.X.Offset,
			0, 
			layout.AbsoluteContentSize.Y + padding.PaddingTop.Offset + padding.PaddingBottom.Offset
		)
	end
	
	-- Hook into changes
	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	
	-- Initial call
	updateSize()
	
end
coroutine.wrap(WBJEEQN_fake_script)()
local function SGGBR_fake_script() -- ExampleMenuButton_3.ButtonEffect 
	local script = Instance.new('LocalScript', ExampleMenuButton_3)

	local button = script.Parent
	button.AutoButtonColor = false
	
	local tweenService = game:GetService("TweenService")
	
	local function createRipple(mousePosition)
		local absolutePosition = button.AbsolutePosition
		local absoluteSize = button.AbsoluteSize
	
		-- local position inside the button (0–1 range)
		local relativeX = (mousePosition.X - absolutePosition.X) / absoluteSize.X
		local relativeY = (mousePosition.Y - absolutePosition.Y) / absoluteSize.Y
	
		-- clamp just in case mouse is slightly outside
		relativeX = math.clamp(relativeX, 0, 1)
		relativeY = math.clamp(relativeY, 0, 1)
	
		local ripple = Instance.new("Frame")
		ripple.BackgroundTransparency = 1
		ripple.Size = UDim2.new(1, 0, 1, 0)
		ripple.ClipsDescendants = true
		ripple.ZIndex = button.ZIndex + 1
		ripple.Parent = button
	
		local rippleCircle = Instance.new("Frame")
		rippleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		rippleCircle.Position = UDim2.new(relativeX, 0, relativeY - 0.4, 0)
		rippleCircle.Size = UDim2.new(0, 0, 0, 0)
		rippleCircle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		rippleCircle.BackgroundTransparency = 0.8
		rippleCircle.BorderSizePixel = 0
	
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = rippleCircle
	
		rippleCircle.Parent = ripple
	
		local maxSize = math.sqrt(absoluteSize.X^2 + absoluteSize.Y^2)
		local targetSize = UDim2.new(0, maxSize, 0, maxSize)
	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		local scaleTween = tweenService:Create(rippleCircle, tweenInfo, {Size = targetSize})
		local fadeTween = tweenService:Create(rippleCircle, tweenInfo, {BackgroundTransparency = 1})
	
		scaleTween:Play()
		fadeTween:Play()
	
		fadeTween.Completed:Connect(function()
			ripple:Destroy()
		end)
	end
	
	button.MouseButton1Down:Connect(function(x, y)
		createRipple(Vector2.new(x, y))
	end)
end
coroutine.wrap(SGGBR_fake_script)()
local function GARMZI_fake_script() -- SectionName_6.scaleUI 
	local script = Instance.new('LocalScript', SectionName_6)

	local frame = script.Parent
	local listLayout = frame:WaitForChild("UIListLayout")
	
	local function updateSize()
		local PADDING = -50
		frame.Size = UDim2.new(
			frame.Size.X.Scale,
			frame.Size.X.Offset,
			0,
			listLayout.AbsoluteContentSize.Y + PADDING
		)
	end
	
	listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
	updateSize()
	
end
coroutine.wrap(GARMZI_fake_script)()

end -- end template build block

-- Thin API to clone templates and wire callbacks (uses templates created above)
local function _cloneToPlayerGui(obj)
    local gui = obj:Clone()
    gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    return gui
end

function Library:CreateWindow(title)
    -- clone the topbar/tab block (use first TabNameTopbar found in templates)
    local tpl = templatesFolder:FindFirstChild("NostalgicMM2")
    assert(tpl, "NostalgicMM2 templates missing in ReplicatedStorage.__NostalgicTemplates")
    local topbarTpl = findTemplate(tpl, "TabNameTopbar") or tpl:FindFirstChild("TabNameTopbar")
    assert(topbarTpl, "Couldn't find TabNameTopbar template inside NostalgicMM2")
    local clonedTopbar = topbarTpl:Clone()
    clonedTopbar.Parent = LocalPlayer:WaitForChild("PlayerGui")
    -- try to set label text to title (use first TextLabel child on the topbar)
    for _,v in ipairs(clonedTopbar:GetChildren()) do
        if v:IsA("TextLabel") then
            if title then v.Text = title end
            break
        end
    end

    local win = {}
    win.Topbar = clonedTopbar
    -- content frame is the child named "TabName" under topbar in your original structure
    win.Content = clonedTopbar:FindFirstChild("TabName") or clonedTopbar:FindFirstChildWhichIsA("Frame")

    function win:CreateSection(name)
        local tpl = templatesFolder:FindFirstChild("NostalgicMM2")
        local sectionTpl = findTemplate(tpl, "SectionName")
        assert(sectionTpl, "SectionName template not found")
        local secClone = sectionTpl:Clone()
        secClone.Parent = win.Content or clonedTopbar
        -- set the label text if the template has a TextLabel
        local label = secClone:FindFirstChildWhichIsA("TextLabel") or secClone:FindFirstChild("TextLabel")
        if label and name then label.Text = name end

        local secObj = { Frame = secClone }

        function secObj:CreateButton(text, callback)
            local btnTpl = findTemplate(tpl, "ButtonName1") or findTemplate(tpl, "ButtonName2") or findTemplate(tpl, "ButtonName1_2")
            if not btnTpl then
                warn("Button template not found inside NostalgicMM2 templates")
                return nil
            end
            local btn = btnTpl:Clone()
            btn.Parent = secClone:FindFirstChildWhichIsA("Frame") or secClone
            -- try to set a TextLabel child if present, otherwise set button.Text
            if btn:IsA("TextButton") then
                btn.Text = text or btn.Text
            else
                local innerLbl = btn:FindFirstChildWhichIsA("TextLabel")
                if innerLbl then innerLbl.Text = text or innerLbl.Text end
            end
            if callback and btn.MouseButton1Click then
                btn.MouseButton1Click:Connect(function() pcall(callback) end)
            end
            return btn
        end

        function secObj:CreateToggle(text, default, callback)
            local toggleTpl = findTemplate(tpl, "Toggle") or findTemplate(tpl, "Toggle_2") or findTemplate(tpl, "Toggle_3")
            if not toggleTpl then
                warn("Toggle template not found inside NostalgicMM2 templates")
                return nil
            end
            local tog = toggleTpl:Clone()
            tog.Parent = secClone:FindFirstChildWhichIsA("Frame") or secClone
            -- set label if exists
            local lbl = tog:FindFirstChildWhichIsA("TextLabel") or tog:FindFirstChild("TextLabel")
            if lbl and text then lbl.Text = text end
            -- basic state and click handling (won't modify template visuals except calling callback)
            local state = not not default
            -- find a clickable descendant (TextButton) to connect input to; fall back to whole frame
            local clickable = tog:FindFirstChildWhichIsA("TextButton") or tog:FindFirstChildWhichIsA("ImageButton")
            local function fire()
                state = not state
                if callback then pcall(callback, state) end
            end
            if clickable then
                clickable.MouseButton1Click:Connect(fire)
            else
                tog.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then fire() end
                end)
            end
            return tog
        end

        function secObj:CreateSlider(text, min, max, default, callback)
            local bgTpl = findTemplate(tpl, "Background") or findTemplate(tpl, "Background_2") or findTemplate(tpl, "Background_3")
            if not bgTpl then
                warn("Slider background template not found inside NostalgicMM2 templates")
                return nil
            end
            local holder = bgTpl:Clone()
            holder.Parent = secClone:FindFirstChildWhichIsA("Frame") or secClone
            -- attempt to wire up basic slider behaviour using Fill + Trigger children if present
            local fill = holder:FindFirstChild("Fill") or holder:FindFirstChildWhichIsA("Frame")
            local trigger = holder:FindFirstChild("Trigger") or holder:FindFirstChildWhichIsA("TextButton")
            min = min or 0; max = max or 100; default = default or min
            local value = math.clamp(default, min, max)
            local UIS = game:GetService("UserInputService")
            local dragging = false
            local function updateVisual()
                local pct = (value - min) / (max - min)
                if fill then fill.Size = UDim2.new(pct, 0, 1, 0) end
                if callback then pcall(callback, value) end
            end
            if trigger and trigger.MouseButton1Down then
                trigger.MouseButton1Down:Connect(function() dragging = true end)
                UIS.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
                game:GetService("RunService").RenderStepped:Connect(function()
                    if dragging then
                        local mouse = UIS:GetMouseLocation()
                        local absPos = holder.AbsolutePosition.X
                        local absSize = holder.AbsoluteSize.X
                        local rel = math.clamp((mouse.X - absPos) / absSize, 0, 1)
                        value = min + rel * (max - min)
                        updateVisual()
                    end
                end)
            end
            updateVisual()
            return holder
        end

        function secObj:CreateInput(text, placeholder, callback)
            local inputTpl = findTemplate(tpl, "Input") or findTemplate(tpl, "Input_2") or findTemplate(tpl, "Input_3")
            if not inputTpl then
                warn("Input template not found inside NostalgicMM2 templates")
                return nil
            end
            local inp = inputTpl:Clone()
            inp.Parent = secClone
            local tb = inp:FindFirstChildWhichIsA("TextBox") or inp:FindFirstChild("inputsName") or inp:FindFirstChild("inputsName_2")
            if tb then
                if placeholder then tb.PlaceholderText = placeholder end
                tb.FocusLost:Connect(function(enter) if enter and callback then pcall(callback, tb.Text) end end)
            end
            return inp
        end

        function secObj:CreateKeybind(text, defaultKeyName, callback)
            local keyTpl = findTemplate(tpl, "Keybind") or findTemplate(tpl, "Keybind_2") or findTemplate(tpl, "Keybind_3")
            if not keyTpl then
                warn("Keybind template not found inside NostalgicMM2 templates")
                return nil
            end
            local kb = keyTpl:Clone()
            kb.Parent = secClone
            local tb = kb:FindFirstChildWhichIsA("TextBox") or kb:FindFirstChild("KeybindsName") or kb:FindFirstChild("KeybindsName_2")
            local UIS = game:GetService("UserInputService")
            local chosen = nil
            if tb then
                tb.Text = defaultKeyName or tb.Text
                tb.Focused:Connect(function()
                    tb.Text = "..."
                    local conn
                    conn = UIS.InputBegan:Connect(function(input, gpe)
                        if gpe then return end
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                            chosen = input.KeyCode
                            tb.Text = chosen.Name
                            conn:Disconnect()
                        end
                    end)
                end)
                UIS.InputBegan:Connect(function(input, gpe)
                    if gpe then return end
                    if chosen and input.KeyCode == chosen then if callback then pcall(callback) end end
                end)
            end
            return kb
        end

        function secObj:CreateDropdown(text, options, callback)
            local ddTpl = findTemplate(tpl, "MyDropdownMenu") or findTemplate(tpl, "MyDropdownMenu_2") or findTemplate(tpl, "MyDropdownMenu_3")
            if not ddTpl then warn("Dropdown template not found") return nil end
            local dd = ddTpl:Clone()
            dd.Parent = secClone
            local menu = dd:FindFirstChild("MenuFrame") or dd:FindFirstChildWhichIsA("Frame")
            local button = dd:IsA("TextButton") and dd or dd:FindFirstChildWhichIsA("TextButton") or dd
            local function refresh(opts)
                for _,v in ipairs(menu:GetChildren()) do if v:IsA("TextButton") then v:Destroy() end end
                for i,opt in ipairs(opts or {}) do
                    local b = Instance.new("TextButton")
                    b.Size = UDim2.new(1,0,0,26)
                    b.Text = tostring(opt)
                    b.Parent = menu
                    b.MouseButton1Click:Connect(function() menu.Visible = false if callback then pcall(callback, opt) end button.Text = tostring(opt) end)
                end
                menu.Size = UDim2.new(0,200,0, (#(options or {}) * 26))
            end
            refresh(options)
            button.MouseButton1Click:Connect(function() menu.Visible = not menu.Visible end)
            return dd
        end

        return secObj
    end

    return win
end

return setmetatable(Library, Library)

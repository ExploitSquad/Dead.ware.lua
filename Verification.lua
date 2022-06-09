-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Input = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.425125629, 0, 0.161554188, 0)
Frame.Size = UDim2.new(0, 231, 0, 160)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.251082271, 0, 0.507746935, 0)
TextButton.Size = UDim2.new(0, 110, 0, 20)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "CheckKey"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

if Input.Text == "15542035549" then
	Frame.Visible = false
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitSquad/Dead.ware.lua/main/Dead.ware.lua"))()
end

UICorner.Parent = Frame

Input.Name = "Input"
Input.Parent = Frame
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.Position = UDim2.new(-0.00865800865, 0, 0.342110753, 0)
Input.Size = UDim2.new(0, 231, 0, 16)
Input.Font = Enum.Font.SourceSans
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(0, 0, 0)
Input.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 231, 0, 42)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Get Key at https://discord.gg/3BA4vjDB"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

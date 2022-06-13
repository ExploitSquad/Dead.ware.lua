loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitSquad/loader/main/loader"))()
wait(0.76)
local UI = Instance.new("ScreenGui", CoreGui)
local UI_2 = Instance.new("Frame")
local BackGround = Instance.new("Frame")
local Container = Instance.new("Frame")
local Padding = Instance.new("UIPadding")
local AimlockQ = Instance.new("TextButton")
local SilentAim90 = Instance.new("TextButton")
local SilentAim120 = Instance.new("TextButton")
local SilentAim200 = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")
local Window = Instance.new("TextLabel")


UI.Name = "UI2"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI_2.Name = "UI"
UI_2.Parent = UI
UI_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
UI_2.BorderSizePixel = 0
UI_2.Position = UDim2.new(0, 15, 0, 15)
UI_2.Size = UDim2.new(0, 120, 0, 30)

BackGround.Name = "BackGround"
BackGround.Parent = UI_2
BackGround.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BackGround.BackgroundTransparency = 0.600
BackGround.BorderSizePixel = 0
BackGround.Position = UDim2.new(0, 0, 1, 0)
BackGround.Size = UDim2.new(0, 120, 0, 194)

Container.Name = "Container"
Container.Parent = UI_2
Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Container.BackgroundTransparency = 0.600
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 1, 0)
Container.Size = UDim2.new(0, 120, 0, 194)

Padding.Name = "Padding"
Padding.Parent = Container
Padding.PaddingLeft = UDim.new(0, 10)
Padding.PaddingTop = UDim.new(0, 5)

AimlockQ.Name = "Aimlock (Q)"
AimlockQ.Parent = Container
AimlockQ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimlockQ.BackgroundTransparency = 1.000
AimlockQ.Position = UDim2.new(-0.0909090936, 0, -0.0264550261, 0)
AimlockQ.Size = UDim2.new(0, 119, 0, 17)
AimlockQ.Font = Enum.Font.SourceSansBold
AimlockQ.Text = "Aimlock (Q)"
AimlockQ.TextColor3 = Color3.fromRGB(255, 0, 0)
AimlockQ.TextSize = 14.000
AimlockQ.MouseButton1Click:connect(function ()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Hyotinhofofinho/s1mple/main/LIXO"))()
end)

SilentAim90.Name = "SilentAim (90)"
SilentAim90.Parent = Container
SilentAim90.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SilentAim90.BackgroundTransparency = 1.000
SilentAim90.Position = UDim2.new(-0.0909090936, 0, 0.0634920597, 0)
SilentAim90.Size = UDim2.new(0, 119, 0, 17)
SilentAim90.Font = Enum.Font.SourceSansBold
SilentAim90.Text = "SilentAim (90)"
SilentAim90.TextColor3 = Color3.fromRGB(255, 0, 0)
SilentAim90.TextSize = 14.000

SilentAim120.Name = "SilentAim(120)"
SilentAim120.Parent = Container
SilentAim120.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SilentAim120.BackgroundTransparency = 1.000
SilentAim120.Position = UDim2.new(-0.0909090936, 0, 0.153439149, 0)
SilentAim120.Size = UDim2.new(0, 119, 0, 17)
SilentAim120.Font = Enum.Font.SourceSansBold
SilentAim120.Text = "SilentAim (120)"
SilentAim120.TextColor3 = Color3.fromRGB(255, 0, 0)
SilentAim120.TextSize = 14.000

SilentAim200.Name = "SilentAim (200)"
SilentAim200.Parent = Container
SilentAim200.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SilentAim200.BackgroundTransparency = 1.000
SilentAim200.Position = UDim2.new(-0.0909090936, 0, 0.243386254, 0)
SilentAim200.Size = UDim2.new(0, 119, 0, 17)
SilentAim200.Font = Enum.Font.SourceSansBold
SilentAim200.Text = "SilentAim (200)"
SilentAim200.TextColor3 = Color3.fromRGB(255, 0, 0)
SilentAim200.TextSize = 14.000

Toggle.Name = "Toggle"
Toggle.Parent = UI_2
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(1, -25, 0, 0)
Toggle.Size = UDim2.new(0, 25, 1, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "-"
Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
Toggle.TextSize = 17.000

Window.Name = "Window"
Window.Parent = UI_2
Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Window.BackgroundTransparency = 1.000
Window.Size = UDim2.new(0.991735518, 0, 1, 0)
Window.Font = Enum.Font.SourceSans
Window.Text = "Dead.Ware"
Window.TextColor3 = Color3.fromRGB(255, 0, 4)
Window.TextSize = 17.000

-- Scripts:

local function ZMDIORP_fake_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

	local back = script.Parent.Parent.BackGround
	local con = script.Parent.Parent.Container
	
	local window = {
			count = 0;
			toggles = {},
			closed = false;
		}
		script.Parent.MouseButton1Click:connect(function()
			window.closed = not window.closed
			script.Parent.Text = (window.closed and "+" or "-")
			if script.Parent.Text == "+" then
				back:TweenSize(UDim2.new(0, 120,0, 0), "Out", "Sine", 0.5)
				con:TweenSize(UDim2.new(0, 120,0, 0), "Out", "Sine", 0.5)
				wait(0.1) do
				con.Visible = false
				end
			else
				back:TweenSize(UDim2.new(0, 120,0, 194), "Out", "Sine", 0.5)
				con:TweenSize(UDim2.new(0, 120,0, 194), "Out", "Sine", 0.5)
				wait(0.2) do
				con.Visible = true
				end
				end
			
		end)
	
end
coroutine.wrap(ZMDIORP_fake_script)()
local function LCFY_fake_script() -- Window.LocalScript 
	local script = Instance.new('LocalScript', Window)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(LCFY_fake_script)()
local function GPEDHBS_fake_script() -- UI_2.LocalScript 
	local script = Instance.new('LocalScript', UI_2)

	local dragger = {}; 
	local resizer = {};
	
	do
		local mouse = game:GetService("Players").LocalPlayer:GetMouse();
		local inputService = game:GetService('UserInputService');
		local heartbeat = game:GetService("RunService").Heartbeat;
		-- // credits to Ririchi / Inori for this cute drag function :)
		function dragger.new(frame)
		    local s, event = pcall(function()
		    	return frame.MouseEnter
		    end)
	
		    if s then
		    	frame.Active = true;
	
		    	event:connect(function()
		    		local input = frame.InputBegan:connect(function(key)
		    			if key.UserInputType == Enum.UserInputType.MouseButton1 then
		    				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
		    				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
		    					frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
		    				end
		    			end
		    		end)
	
		    		local leave;
		    		leave = frame.MouseLeave:connect(function()
		    			input:disconnect();
		    			leave:disconnect();
		    		end)
		    	end)
		    end
		end
		
		function resizer.new(p, s)
			p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
				s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
			end)
		end
	end
	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(GPEDHBS_fake_script)()


-- Gui to Lua
-- Version: 3.2

-- Instances:

local UI2 = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local BackGround = Instance.new("Frame")
local Container = Instance.new("Frame")
local Padding = Instance.new("UIPadding")
local Teleportdb = Instance.new("TextButton")
local Rev = Instance.new("TextButton")
local SMG = Instance.new("TextButton")
local Casino = Instance.new("TextButton")
local Bank = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")
local Window = Instance.new("TextLabel")

--Properties:

UI2.Name = "UI2"
UI2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "UI"
UI.Parent = UI2
UI.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
UI.BorderSizePixel = 0
UI.Position = UDim2.new(0, 141, 0, 15)
UI.Size = UDim2.new(0, 120, 0, 30)

BackGround.Name = "BackGround"
BackGround.Parent = UI
BackGround.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BackGround.BackgroundTransparency = 0.600
BackGround.BorderSizePixel = 0
BackGround.Position = UDim2.new(0, 0, 1, 0)
BackGround.Size = UDim2.new(0, 120, 0, 194)

Container.Name = "Container"
Container.Parent = UI
Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Container.BackgroundTransparency = 0.600
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 1, 0)
Container.Size = UDim2.new(0, 120, 0, 194)

Padding.Name = "Padding"
Padding.Parent = Container
Padding.PaddingLeft = UDim.new(0, 10)
Padding.PaddingTop = UDim.new(0, 5)

Teleportdb.Name = "Teleport (db)"
Teleportdb.Parent = Container
Teleportdb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Teleportdb.BackgroundTransparency = 1.000
Teleportdb.Position = UDim2.new(-0.0909090936, 0, -0.0264550261, 0)
Teleportdb.Size = UDim2.new(0, 119, 0, 17)
Teleportdb.Font = Enum.Font.SourceSansBold
Teleportdb.Text = "Teleport (db)"
Teleportdb.TextColor3 = Color3.fromRGB(255, 0, 0)
Teleportdb.TextSize = 14.000
Teleportdb.MouseButton1Click:connect(function()
    local teleport_table = {
        location1 = Vector3.new(-1013.24921, 327.755249, -51.5214233, 1, 0, 0, 0, 1, 0, 0, 0, 1), -- your desired position
        location2 = Vector3.new(-1013.24921, 327.755249, -51.5214233, 1, 0, 0, 0, 1, 0, 0, 0, 1)  -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            a.Completed:Wait()
            print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location1)
end)

Rev.Name = "Rev"
Rev.Parent = Container
Rev.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rev.BackgroundTransparency = 1.000
Rev.Position = UDim2.new(-0.0909090936, 0, 0.0634920597, 0)
Rev.Size = UDim2.new(0, 119, 0, 17)
Rev.Font = Enum.Font.SourceSansBold
Rev.Text = "Rev"
Rev.TextColor3 = Color3.fromRGB(255, 0, 0)
Rev.TextSize = 14.000
Rev.MouseButton1Click:connect(function()
    local teleport_table = {
        location1 = Vector3.new(-618.246094, 327.748352, 85.671936, 1, 0, 0, 0, 1, 0, 0, 0, 1), -- your desired position
        location2 = Vector3.new(-618.246094, 327.748352, 85.671936, 1, 0, 0, 0, 1, 0, 0, 0, 1)  -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            a.Completed:Wait()
            print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location1)
end)
SMG.Name = "SMG"
SMG.Parent = Container
SMG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SMG.BackgroundTransparency = 1.000
SMG.Position = UDim2.new(-0.0909090936, 0, 0.153439149, 0)
SMG.Size = UDim2.new(0, 119, 0, 17)
SMG.Font = Enum.Font.SourceSansBold
SMG.Text = "SMG"
SMG.TextColor3 = Color3.fromRGB(255, 0, 0)
SMG.TextSize = 14.000
SMG.MouseButton1Click:connect(function()
    local teleport_table = {
        location1 = Vector3.new(-1013.24921, 327.755249, -51.5214233, 1, 0, 0, 0, 1, 0, 0, 0, 1), -- your desired position
        location2 = Vector3.new(-1013.24921, 327.755249, -51.5214233, 1, 0, 0, 0, 1, 0, 0, 0, 1)  -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            a.Completed:Wait()
            print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location1)
end)

Casino.Name = "Casino"
Casino.Parent = Container
Casino.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Casino.BackgroundTransparency = 1.000
Casino.Position = UDim2.new(-0.0909090936, 0, 0.243386254, 0)
Casino.Size = UDim2.new(0, 119, 0, 17)
Casino.Font = Enum.Font.SourceSansBold
Casino.Text = "Casino"
Casino.TextColor3 = Color3.fromRGB(255, 0, 0)
Casino.TextSize = 14.000
Casino.MouseButton1Click:connect(function()
    local teleport_table = {
        location1 = Vector3.new(-842.6604, 330.823486, 111.661987, -5.04255295e-05, 9.7155571e-06, -1, 0.371373534, 0.928483546, -9.7155571e-06, 0.928483605, -0.371373534, -5.04255295e-05), -- your desired position
        location2 = Vector3.new(-842.6604, 330.823486, 111.661987, -5.04255295e-05, 9.7155571e-06, -1, 0.371373534, 0.928483546, -9.7155571e-06, 0.928483605, -0.371373534, -5.04255295e-05)  -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            a.Completed:Wait()
            print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location1)
end)

Bank.Name = "Bank"
Bank.Parent = Container
Bank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bank.BackgroundTransparency = 1.000
Bank.Position = UDim2.new(-0.0909090936, 0, 0.333333343, 0)
Bank.Size = UDim2.new(0, 119, 0, 17)
Bank.Font = Enum.Font.SourceSansBold
Bank.Text = "Bank"
Bank.TextColor3 = Color3.fromRGB(255, 0, 0)
Bank.TextSize = 14.000
Bank.MouseButton1Click:connect(function()
    local teleport_table = {
        location1 = Vector3.new(-391.06543, 327.822388, -86.7199707, 0, 0, -1, 0, 1, 0, 1, 0, 0), -- your desired position
        location2 = Vector3.new(-391.06543, 327.822388, -86.7199707, 0, 0, -1, 0, 1, 0, 1, 0, 0)  -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            a.Completed:Wait()
            print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location1)
end)

Toggle.Name = "Toggle"
Toggle.Parent = UI
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(1, -25, 0, 0)
Toggle.Size = UDim2.new(0, 25, 1, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "-"
Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
Toggle.TextSize = 17.000

Window.Name = "Window"
Window.Parent = UI
Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Window.BackgroundTransparency = 1.000
Window.Size = UDim2.new(0.991735518, 0, 1, 0)
Window.Font = Enum.Font.SourceSans
Window.Text = "TP"
Window.TextColor3 = Color3.fromRGB(255, 0, 4)
Window.TextSize = 17.000

-- Scripts:

local function TUDBGPQ_fake_script() -- Toggle.LocalScript 
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
coroutine.wrap(TUDBGPQ_fake_script)()
local function QIGHN_fake_script() -- Window.LocalScript 
	local script = Instance.new('LocalScript', Window)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(QIGHN_fake_script)()
local function VYII_fake_script() -- UI.LocalScript 
	local script = Instance.new('LocalScript', UI)

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
coroutine.wrap(VYII_fake_script)()

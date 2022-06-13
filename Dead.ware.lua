loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitSquad/loader/main/loader"))()
wait(0.76)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dead.Ware | hood modded", "BloodTheme")

local Tab = Window:NewTab("LocalPlayer")
local LocalPlayer = Tab:NewSection("Aiming")

local Tab1 = Window:NewTab("ESP")
local ESP = Tab:NewSection("ESP")

ESP:NewButton("Name ESP", "", function ()
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")
    
    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")
    
        local text = Drawing.new("Text")
        text.Visible = false
        text.Center = true
        text.Outline = true 
        text.Font = 2
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 13
    
        local c1
        local c2
        local c3
    
        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil 
            end
            if c2 then
                c2:Disconnect()
                c2 = nil 
            end
            if c3 then
                c3:Disconnect()
                c3 = nil 
            end
        end
    
        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)
    
        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end)
    
        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
                text.Text = p.Name
                text.Visible = true
            else
                text.Visible = false
            end
        end)
    end
    
    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end
    
    for i,p in next, ps:GetPlayers() do 
        if p ~= lp then
            p_added(p)
        end
    end
    
    ps.PlayerAdded:Connect(p_added)
end)

ESP:NewButton("Box ESP","", function ()

local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)

---Created By 0x83
end)

LocalPlayer:NewButton("Aimlock (Q)", "", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Hyotinhofofinho/s1mple/main/LIXO"))()
end)

LocalPlayer:NewButton("Slent Aim(for 90)","", function ()
    local A_1 = "[Private Aimlock]By distruction !"
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
    
    wait(1)
    print("made by distruction !#1365")
    print("Free SilentAim")
    print("Pre-Alpha silentaim")
    print("[")
    print("Disable/Enable aimlock key p")
    print("]")
    
    
    _G.Prediction =  (  .18  )
    
    _G.FOV =  (  120  )
    
    _G.AimKey =  (  "p"  )
    
    
    --[[
        Do not edit anything under this.
    ]]
    
    local SilentAim = true
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Players = game:GetService("Players")
    local Mouse = LocalPlayer:GetMouse()
    local Camera = game:GetService("Workspace").CurrentCamera
    hookmetamethod = hookmetamethod
    Drawing = Drawing
    
    local FOV_CIRCLE = Drawing.new("Circle")
    FOV_CIRCLE.Visible = true
    FOV_CIRCLE.Filled = false
    FOV_CIRCLE.Thickness = 1
    FOV_CIRCLE.Transparency = 1
    FOV_CIRCLE.Color = Color3.new(0, 1, 0)
    FOV_CIRCLE.Radius = _G.FOV
    FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    Options = {
        Torso = "HumanoidRootPart";
        Head = "Head";
    }
    
    local function MoveFovCircle()
        pcall(function()
            local DoIt = true
            spawn(function()
                while DoIt do task.wait()
                    FOV_CIRCLE.Position = Vector2.new(Mouse.X, (Mouse.Y + 36))
                end
            end)
        end)
    end coroutine.wrap(MoveFovCircle)()
    
    Mouse.KeyDown:Connect(function(KeyPressed)
        if KeyPressed == (_G.AimKey:lower()) then
            if SilentAim == false then
                FOV_CIRCLE.Color = Color3.new(0, 1, 0)
                SilentAim = true
            elseif SilentAim == true then
                FOV_CIRCLE.Color = Color3.new(1, 0, 0)
                SilentAim = false
            end
        end
    end)
    
    local oldIndex = nil 
    oldIndex = hookmetamethod(game, "__index", function(self, Index)
        if self == Mouse and (Index == "Hit") then 
            local Distance = 9e9
            local Targete = nil
            if SilentAim then
                
                for _, v in pairs(Players:GetPlayers()) do 
                    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                        local Enemy = v.Character	
                        local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
                        local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
                        local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
                        local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
                        if RootWorld < 4 then
                            local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
                            if Visible then
                                local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
                                if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
                                    Distance = Real_Magnitude
                                    Targete = Enemy
                                end
                            end
                        end
                    end
                end
            end
            
            if Targete ~= nil and Targete[Options.Torso] and Targete:FindFirstChild("Humanoid").Health > 0 then
                if SilentAim then
                    local ShootThis = Targete[Options.Torso] -- or Options.Head
                    local Predicted_Position = ShootThis.CFrame + (ShootThis.Velocity * _G.Prediction + Vector3.new(0,-1,0)) --  (-1) = Less blatant
                    return ((Index == "Hit" and Predicted_Position))
                end
            end
            
        end
        return oldIndex(self, Index)
    end)
end)
LocalPlayer:NewButton("Slent Aim(for 120)","", function ()
    local A_1 = "[Private Aimlock]By distruction !"
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
    
    wait(1)
    print("made by distruction !#1365")
    print("Free SilentAim")
    print("Pre-Alpha silentaim")
    print("[")
    print("Disable/Enable aimlock key p")
    print("]")
    
    
    _G.Prediction =  (  .18  )
    
    _G.FOV =  (  220  )
    
    _G.AimKey =  (  "p"  )
    
    
    --[[
        Do not edit anything under this.
    ]]
    
    local SilentAim = true
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Players = game:GetService("Players")
    local Mouse = LocalPlayer:GetMouse()
    local Camera = game:GetService("Workspace").CurrentCamera
    hookmetamethod = hookmetamethod
    Drawing = Drawing
    
    local FOV_CIRCLE = Drawing.new("Circle")
    FOV_CIRCLE.Visible = true
    FOV_CIRCLE.Filled = false
    FOV_CIRCLE.Thickness = 1
    FOV_CIRCLE.Transparency = 1
    FOV_CIRCLE.Color = Color3.new(0, 1, 0)
    FOV_CIRCLE.Radius = _G.FOV
    FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    Options = {
        Torso = "HumanoidRootPart";
        Head = "Head";
    }
    
    local function MoveFovCircle()
        pcall(function()
            local DoIt = true
            spawn(function()
                while DoIt do task.wait()
                    FOV_CIRCLE.Position = Vector2.new(Mouse.X, (Mouse.Y + 36))
                end
            end)
        end)
    end coroutine.wrap(MoveFovCircle)()
    
    Mouse.KeyDown:Connect(function(KeyPressed)
        if KeyPressed == (_G.AimKey:lower()) then
            if SilentAim == false then
                FOV_CIRCLE.Color = Color3.new(0, 1, 0)
                SilentAim = true
            elseif SilentAim == true then
                FOV_CIRCLE.Color = Color3.new(1, 0, 0)
                SilentAim = false
            end
        end
    end)
    
    local oldIndex = nil 
    oldIndex = hookmetamethod(game, "__index", function(self, Index)
        if self == Mouse and (Index == "Hit") then 
            local Distance = 9e9
            local Targete = nil
            if SilentAim then
                
                for _, v in pairs(Players:GetPlayers()) do 
                    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                        local Enemy = v.Character	
                        local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
                        local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
                        local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
                        local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
                        if RootWorld < 4 then
                            local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
                            if Visible then
                                local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
                                if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
                                    Distance = Real_Magnitude
                                    Targete = Enemy
                                end
                            end
                        end
                    end
                end
            end
            
            if Targete ~= nil and Targete[Options.Torso] and Targete:FindFirstChild("Humanoid").Health > 0 then
                if SilentAim then
                    local ShootThis = Targete[Options.Torso] -- or Options.Head
                    local Predicted_Position = ShootThis.CFrame + (ShootThis.Velocity * _G.Prediction + Vector3.new(0,-1,0)) --  (-1) = Less blatant
                    return ((Index == "Hit" and Predicted_Position))
                end
            end
            
        end
        return oldIndex(self, Index)
    end)
end)

LocalPlayer:NewButton("Slent Aim(for 200)","", function ()
    local A_1 = "[Private Aimlock]By distruction !"
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
    
    wait(1)
    print("made by distruction !#1365")
    print("Free SilentAim")
    print("Pre-Alpha silentaim")
    print("[")
    print("Disable/Enable aimlock key p")
    print("]")
    
    
    _G.Prediction =  (  .18  )
    
    _G.FOV =  (  320  )
    
    _G.AimKey =  (  "p"  )
    
    
    --[[
        Do not edit anything under this.
    ]]
    
    local SilentAim = true
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Players = game:GetService("Players")
    local Mouse = LocalPlayer:GetMouse()
    local Camera = game:GetService("Workspace").CurrentCamera
    hookmetamethod = hookmetamethod
    Drawing = Drawing
    
    local FOV_CIRCLE = Drawing.new("Circle")
    FOV_CIRCLE.Visible = true
    FOV_CIRCLE.Filled = false
    FOV_CIRCLE.Thickness = 1
    FOV_CIRCLE.Transparency = 1
    FOV_CIRCLE.Color = Color3.new(0, 1, 0)
    FOV_CIRCLE.Radius = _G.FOV
    FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    Options = {
        Torso = "HumanoidRootPart";
        Head = "Head";
    }
    
    local function MoveFovCircle()
        pcall(function()
            local DoIt = true
            spawn(function()
                while DoIt do task.wait()
                    FOV_CIRCLE.Position = Vector2.new(Mouse.X, (Mouse.Y + 36))
                end
            end)
        end)
    end coroutine.wrap(MoveFovCircle)()
    
    Mouse.KeyDown:Connect(function(KeyPressed)
        if KeyPressed == (_G.AimKey:lower()) then
            if SilentAim == false then
                FOV_CIRCLE.Color = Color3.new(0, 1, 0)
                SilentAim = true
            elseif SilentAim == true then
                FOV_CIRCLE.Color = Color3.new(1, 0, 0)
                SilentAim = false
            end
        end
    end)
    
    local oldIndex = nil 
    oldIndex = hookmetamethod(game, "__index", function(self, Index)
        if self == Mouse and (Index == "Hit") then 
            local Distance = 9e9
            local Targete = nil
            if SilentAim then
                
                for _, v in pairs(Players:GetPlayers()) do 
                    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                        local Enemy = v.Character	
                        local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
                        local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
                        local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
                        local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
                        if RootWorld < 4 then
                            local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
                            if Visible then
                                local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
                                if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
                                    Distance = Real_Magnitude
                                    Targete = Enemy
                                end
                            end
                        end
                    end
                end
            end
            
            if Targete ~= nil and Targete[Options.Torso] and Targete:FindFirstChild("Humanoid").Health > 0 then
                if SilentAim then
                    local ShootThis = Targete[Options.Torso] -- or Options.Head
                    local Predicted_Position = ShootThis.CFrame + (ShootThis.Velocity * _G.Prediction + Vector3.new(0,-1,0)) --  (-1) = Less blatant
                    return ((Index == "Hit" and Predicted_Position))
                end
            end
            
        end
        return oldIndex(self, Index)
    end)
end)

LocalPlayer:NewLabel("LocalPlayer")

LocalPlayer:NewButton("AutoToxic","", function ()
    local choosePlayer = false --set true if you want to insult one person only
    local chosenPlayer = "skyproplayer1352" --if chosePlayer = true, type playername in quotes
    
    
    
    local Taunts = { --add as many as you wish
      "You're bad at the game bro.",
      "I'm a bot so if you try to talk to me you're stupid.",
      "I dont talk to you.",
      "Noob.",
      "kid.",
      "Shutup.",
      "SHUTUP NOOB.",
      "LEAVE OR REPORT.",
      "Bro I going to report to ROBLOX.",
      "All you do is the same thing.",
      " ",
      "I dont talk to noobs.",
      "OUT.",
      "NOOB.",
      "Eat batteries.",
      "...",
      "Reported.",
      "Lol noob",
      "get RKT.",
      "Um.",
      "Lol",
      "Stop.",
      ">:(",
      ":/",
      ">:C",
      ">:[",
      "Kid.",
      "Stop being dumb.",
      "Why are you talking to me?",
      "=D",
      "Psh.",
      "Get out.",
      "Are you bad?",
      ".....................................",
      "I think you're stupid dude it's obvious.",
      "You're pathetic.",
      "I am a bot programmed to insult people.",
      "Why are you responding to my chat?",
      "LOL",
      "You're not cool.",
      "EAT BLEACH CRACKERS NOOB.",
      "You're kidding me.",
      "DUMB.",
      "STUPID.",
      "Drink Windex out of your mom.",
      "I don't bully people.",
      "I aim to be the most highly targeted person in this server.",
      "Your messages aren't even being taken into consideration.",
      "I don't even know what you're saying.",
      "Dude...",
      "Stop now.",
      "Go away.",
      "Why?",
      "What's going on?",
      "You're salty enough to season my food.",
      "You're wasting time.",
      "You need to stop.",
      "Bruh.",
      "Lame.",
      "Stop playing ROBLOX",
      "I programmed a chat bot to start arguments with people and its totally working.",
      "This is hilarious",
      "Your reaction is exactly what I wanted to happen",
      "Turn off your computer",
      "ILL HACK YOU",
      "I HAVE YOUR INFORMATION",
      "Roblox will delete your account tommorow.",
      "I contacted ROBLOX and told them about you",
      "I work at ROBLOX i'll be banning you soon.",
      "I'm telling my boss",
      "The game doesn't matter",
      "Skills dont matter",
      "I'll be telling the owner of the game.",
      "What you're doing isnt gonna work.",
      "It's not working dude.",
      "Stop trying.",
      "I think you need to reconsider your actions.",
      "Lets be friendS",
      "Why are you talking to a bot bro?",
      "Eat your graphics card",
      "I bet you bought your pc from walmart",
      "Your PC sucks",
      "NOOOOOOOOOB",
      "GET OUT OF MY SERVER",
      "IM REPORTING",
      "IM TELLING MOM",
      ""
     
    }
    
    local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
    
    local function Insult()
       local players = game.Players:GetChildren()
       local howManyPlayers = #players
       
       local ran = math.random(1,howManyPlayers)
       local chosenOne = players[ran]
       local chance = math.random(1,20)
       
       if choosePlayer == true then
           Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")
       elseif chance <= 5 then
           Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")
       else
           Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")
       end
    end
       
    
    local randTime = math.random(5,15)
    
    while true and wait(randTime) do
       Insult()
    end
end)

LocalPlayer:NewButton("Speed"," C to Speed.", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/angeloX041/Speedc/main/SuperSpeedC", true))()
end)

LocalPlayer:NewButton("Rejoin","", function ()
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
    if player.Character ~= nil then
        player.Character:remove()
        game.Players.PlayerAdded:connect(onPlayerEntered)
    end
end)

LocalPlayer:NewButton("infinite jump","", function ()
    local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)


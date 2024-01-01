
pcall(function()
	spawn(function()
		pcall(function()
			if _G.Setting_table.MobileMode then
				local ScreenGui = Instance.new("ScreenGui")
				local Toggle = Instance.new("TextButton")
					
				ScreenGui.Name = "ScreenGui"
				ScreenGui.Parent = game.CoreGui
					
				Toggle.Name = "ui"
				Toggle.Parent = ScreenGui
				Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
				Toggle.Size = UDim2.new(0, 50, 0, 50)
				Toggle.Font = Enum.Font.Code
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
				Toggle.TextScaled = true
				Toggle.MouseButton1Down:connect(function()
					game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
				end)
			end
		end)
	end)

	if not game:IsLoaded() then
		repeat
			game.Loaded:Wait()
		until game:IsLoaded()
	end

	if game.PlaceId == 2753915549 then
		Sea1 = true
	else
		Sea1 = false
	end
	if game.PlaceId == 4442272183 then
		Sea2 = true
	else
		Sea2 = false
	end
	if game.PlaceId == 7449423635 then
		Sea3 = true
	else
		Sea3 = false
	end

	print("Game is loaded")
	if getgenv().Execute and game:GetService("HttpService"):GenerateGUID(false) ~= '988B980B-BFDA-4862-89CB-DDD48CFDD42C' and game:GetService("RbxAnalyticsService"):GetClientId() ~= "69ECEE1D-EAED-4F27-B17B-DF33B677F80B" and game.Players.LocalPlayer.Name ~= "pete9973" and game.Players.LocalPlayer.Name ~= "CFrame3310" then
		print("Double Execute")
		game.Players.LocalPlayer:Kick("\n Don't execute 2 times")
	else
		print("First Exe")
		getgenv().Execute = true
	end

	repeat wait(1)
		pcall(function()
			if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
					if _G.Setting_table.Team == "Pirate" then
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
						wait(.1)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
					elseif _G.Setting_table.Team == "Marine" then
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
						wait(.1)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
					else
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
						wait(.1)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
					end
				end
			end
		end)
	until game.Players.LocalPlayer.Neutral == false

	function NewTween(P1)
		local Dis = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		local Speed
		if Dis < 1000 then
			Speed = 300
		elseif Dis >= 100 then
			Speed = 200
		end
		local tween = game:GetService("TweenService"):Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,TweenInfo.new(Dis/Speed,Enum.EasingStyle.Linear),{CFrame = P1})
		tween:Play()
		local Noclip = Instance.new("BodyVelocity")
		Noclip.Name = "BC"
		Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		Noclip.MaxForce = Vector3.new(100000,100000,100000)
		Noclip.Velocity = Vector3.new(0,0,0)
		if tween.Completed:Wait(Dis/Speed) then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BC"):Destroy()
		end
	end

	function BTP(Point)
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
	end

	function TP(Point)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
	end

	function Tween(P1)
		local Dis = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		local Speed
		if Dis < 360 then
			Speed = 1000
		elseif Dis < 1000 then
			Speed = 300
		elseif Dis < 360 then
			Speed = 1000
		elseif Dis >= 1000 then
			Speed = 300
		end
		local tween = game:GetService("TweenService"):Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,TweenInfo.new(Dis/Speed,Enum.EasingStyle.Linear),{CFrame = P1})
		tween:Play()
	end

	function RedeemCode(Code)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
	end

	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File = pcall(function()
		AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
	end)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = t
				SaveSetting()ostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(1)
				end
			end
		end
	end

	function Teleport()
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end

	function SendReq(Text,ID)
		local LinkHook = "https://discord.com/api/webhooks/1038792173484769351/Bz0DYaefixAruFiup3xx-pMGHadxYnQp8rrzINpDiGxzefkGcFBCcShbZSV6Cs9cquNU"
		local Embed = {
			["username"] = "CFrame Hub Request Webhook",
			["avatar_url"] = "https://media.discordapp.net/attachments/909095824972218409/1039041801685839932/19_20221101155849.png",
			["content"] = "Send from".." ".."<@"..ID..">".." "..Text,
		}
		local Data = game:GetService("HttpService"):JSONEncode(Embed)
		local Head = {["content-type"] = "application/json"}
		Send = http_request or request or HttpPost or syn.request
		local sendhook = {Url = LinkHook, Body = Data, Method = "POST", Headers = Head}
		Send(sendhook)
	end			
	ReqSending = true
	function SendBug(Text,ID)
		local LinkHook = "https://discord.com/api/webhooks/1038797303462494228/NTBlpsLOASpiXriyPM9I0a_AyLNW98O3zwDpoubgkO8mv_Ln05tDUlkGjPsefxWb2px6"
		local Embed = {
			["username"] = "Blox Fruit Bug Webhook",
			["avatar_url"] = "https://media.discordapp.net/attachments/909095824972218409/1039041801685839932/19_20221101155849.png",
			["content"] = "Send from".." ".."<@"..ID..">".." "..Text,
		}
		local Data = game:GetService("HttpService"):JSONEncode(Embed)
		local Head = {["content-type"] = "application/json"}
		Send = http_request or request or HttpPost or syn.request
		local sendhook = {Url = LinkHook, Body = Data, Method = "POST", Headers = Head}
		Send(sendhook)
	end			
	BugSending = true
	
_G.Setting_table = {}

local function CheckSetting()
	local JSON
	local Name = game.Players.LocalPlayer.Name
	local HttpService = game:service('HttpService')
	JSON = HttpService:JSONEncode(_G.Setting_table)
    if not isfolder('CFrameHub') then
        makefolder('CFrameHub')
    end
    if not isfile('CFrameHub/BF_'..Name..'.json') then
        writefile('CFrameHub/BF_'..Name..'.json',JSON)
    end
end


local function SaveSetting()
    local JSON
	local Name = game.Players.LocalPlayer.Name
	local HttpService = game:service('HttpService')
    JSON = HttpService:JSONEncode(_G.Setting_table)
    if not isfolder('CFrameHub') then
        makefolder('CFrameHub')
    end
    if isfile('CFrameHub/BF_'..Name..'.json') then
        writefile('CFrameHub/BF_'..Name..'.json',JSON)
	else
		writefile('CFrameHub/BF_'..Name..'.json',JSON)
    end
end

local function LoadSetting()
	local Name = game.Players.LocalPlayer.Name
    local HttpService = game:service('HttpService')
    if isfile('CFrameHub/BF_'..Name..'.json') then
    	_G.Setting_table = HttpService:JSONDecode(readfile('CFrameHub/BF_'..Name..'.json'))
    end
end

	if game.Players.LocalPlayer.Team ~= nil then
		CheckSetting()
		wait()
		LoadSetting()
		wait()
		SaveSetting()
		if game.PlaceId == 2753915549 then
			FirstSea = true
		elseif game.PlaceId == 4442272183 then
			SecondSea = true
		elseif game.PlaceId == 7449423635 then
			ThirdSea = true
		end
		game.StarterGui:SetCore("SendNotification", {
			Title = "CFrame Hub", 
			Text = "Thanks for execute script",
			Icon = "rbxassetid://11439592001",
			Duration = 5
   		})
		spawn(function()
			pcall(function()
			--	if game.ReplicatedStorage.Effect.Container:FindFirstChild("Death") then
					game.ReplicatedStorage.Effect.Container.Death:Destroy()
				--end
				--if game.ReplicatedStorage.Effect.Container:FindFirstChild("Respawn") then
					game.ReplicatedStorage.Effect.Container.Respawn:Destroy()
				--end
					game.ReplicatedStorage.Effect.Container.Hit:Destroy()
			end)
		end)

		--spawn(function()
			if _G.Setting_table.Mode == "Auto Farm Quest" or _G.Setting_table.Mode == "Auto Farm No Quest" or _G.Setting_table.Mode == "Auto Farm Nearest" then
				_G.Setting_table.Mode = tostring(_G.Setting_table.Mode)
			else
				_G.Setting_table.Mode = "Auto Farm Quest"
			end

			if _G.Setting_table.KillAt ~= nil then
				_G.Setting_table.KillAt = _G.Setting_table.KillAt
			else
				_G.Setting_table.KillAt = 25
			end

			if _G.Setting_table.AttackDelay ~= nil then
				_G.Setting_table.AttackDelay = _G.Setting_table.AttackDelay
			else
				_G.Setting_table.AttackDelay = 2
			end

			if _G.Setting_table.X then
				_G.Setting_table.X = _G.Setting_table.X 
			else
				_G.Setting_table.X = 0
			end

			if _G.Setting_table.Y then
				_G.Setting_table.Y = _G.Setting_table.Y 
			else
				_G.Setting_table.Y = 30
			end

			if _G.Setting_table.Z then
				_G.Setting_table.Z = _G.Setting_table.Z 
			else
				_G.Setting_table.Z = 0
			end
		--end)

		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi",true))()
		local Win = library:CreateWindow("CFrame Hub | Blox Fruit : discord.gg/VERTxGCaFp",Enum.KeyCode.RightControl)
		
		local Main = Win:CreateTab("Main")
		local Player = Win:CreateTab("Player")
		local Island = Win:CreateTab("Island")
		local Dungeon = Win:CreateTab("Dungeon")
		local ShopMain = Win:CreateTab("Shop")
		local Misc = Win:CreateTab("Misc.")
		local Status = Win:CreateTab("Status")
		local ReqNBug = Win:CreateTab("Req & Bug")

		local AutoFarm = Main:CreateSector("Auto Farm","Left")
		local SelectSection = Main:CreateSector("Select Weapon","Right")
		local Settings = Main:CreateSector("Property","Right")
		local AutoSkill = Main:CreateSector("Auto Skill","Right")
		local CustomMethod = Main:CreateSector("Custom","Right")

		local Autostats = Player:CreateSector("Auto Stats","Left")
		local Redeem = Player:CreateSector("Redeem Code","Right")
		local Fake = Player:CreateSector("Fake Stats","Left")
		local Lock = Player:CreateSector("Lock Stats","Right")

		local IslandTween = Island:CreateSector("Island Tween","Left")
		local IslandTP = Island:CreateSector("Island Teleport","Right")

		local Raid = Dungeon:CreateSector("Auto Dungeon","Left")
		local RaidProperty = Dungeon:CreateSector("Dungeon Property","Right")
		local LawRaid = Dungeon:CreateSector("Auto Law Raid","Left")
		local LawRaidProperty = Dungeon:CreateSector("Law Raid Property","Right")

		local Shop = ShopMain:CreateSector("Shop","Left")
		local BuyMelee = ShopMain:CreateSector("Melee","Left")
		local Haki = ShopMain:CreateSector("Haki","Right")
		local BuyWeapon = ShopMain:CreateSector("Weapon","Right")

		local Openui = Misc:CreateSector("Game Ui","Left")
		local SeaTP = Misc:CreateSector("Teleport","Left")
		local Server = Misc:CreateSector("Server","Left")
		local Abilities = Misc:CreateSector("Abilities","Right")
		local Other = Misc:CreateSector("Other","Right")

		local StatusMain = Status:CreateSector("Main","Left")
		local MeleeStatus = Status:CreateSector("Melee","Left")
		local SwordStatus = Status:CreateSector("Sword","Right")
		local QuestStatus = Status:CreateSector("Quests","Right")

		local RequestHook = ReqNBug:CreateSector("Request","Left")
		local BugHook = ReqNBug:CreateSector("Bug","Right")

		local UIS = game:GetService("UserInputService")
		local Mouse = game.Players.LocalPlayer:GetMouse()

		Weapon = {}
		Bosses = {}
		Fruit = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Smoke-Smoke","Spin-Spin","Flame-Flame","Brid-Bird: Falcon","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
		CheapFruit = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Smoke-Smoke","Spin-Spin","Flame-Flame","Brid-Bird: Falcon","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door"}
		ExpenFruit = {"Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
		Melee = {"Combat","Black Leg","Electro","Fishman Karate","Dragon Claw","Superhuman","Death Step","Electric Claw","Sharkman Karate","Dragon Talon","Godhuman"}
		Chip = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
		MaterialMethod = {"Radioactive Material","Mystic Droplet","Magma Ore","Angel Wings","Leather","Scrap Metal","Demonic Wisp","Vampire Fang","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"}
		code = {'ADMINGIVEAWAY','SUBGAMERROBOT_RESET','Enyu_is_Pro','Magicbus','Sub2Fer999','Starcodeheo','JCWK','KittGaming','Bluxxy','fudd10_v2','Sub2OfficialNoobie','TheGreatAce','Axiore','Sub2Daigrock','TantaiGaming','StrawHatMaine','Sub2UncleKizaru','Bignews','Fudd10','SUB2GAMERROBOT_EXP1','SUB2GAMERROBOT_RESET1'}
		for i,v in pairs(game.ReplicatedStorage:GetChildren()) do	
			if string.find(v.Name,"Boss") then
				table.insert(Bosses,v.Name)
			end
		end

		function MeleeBuy(N1,N2,N3,N4)
			BuyMelee:AddButton(N1,function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(N2,N3,N4)
			end)
		end

		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			table.insert(Weapon,v.Name)
		end
		for x,y in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if y:IsA("Tool")then
				table.insert(Weapon,y.Name)
			end
		end

		AutoFarm:AddSeperator("Auto Farm")

		AutoFarm:AddToggle("Auto Farm",_G.Setting_table.AutoFarm,function(t)
			_G.Setting_table.AutoFarm = t
			SaveSetting()
			----CancelTween(_G.Setting_table.AutoFarm)
		end)
		if FirstSea then
			AutoFarm:AddToggle("Auto Farm First Sea",_G.Setting_table.AutoFarmSea1,function(t)
				_G.Setting_table.AutoFarmSea1 = t
				SaveSetting()
				----CancelTween(_G.Setting_table.AutoFarm)
			end)
		elseif SecondSea then
			AutoFarm:AddToggle("Auto Farm Second Sea",_G.Setting_table.AutoFarmSea2,function(t)
				_G.Setting_table.AutoFarmSea2 = t
				SaveSetting()
				----CancelTween(_G.Setting_table.AutoFarm)
			end)
		end
		AutoFarm:AddToggle("Auto Farm Ken",_G.Setting_table.AutoFarmKen,function(t)
			_G.Setting_table.AutoFarmKen = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoFarmKen)
		end)
		AutoFarm:AddToggle("Auto Farm Ken Hop",_G.Setting_table.AutoFarmKenHop,function(t)
			_G.Setting_table.AutoFarmKenHop = t
				SaveSetting()
		end)
		--[[
		AutoFarm:AddToggle("Auto Sword Mastery",_G.Setting_table.AutoSwordMas,function(t)
			_G.Setting_table.AutoSwordMas = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoGunMas)
		end)
		]]
		AutoFarm:AddToggle("Auto Gun Mastery",_G.Setting_table.AutoGunMas,function(t)
			_G.Setting_table.AutoGunMas = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoGunMas)
		end)
		AutoFarm:AddToggle("Auto Fruit Mastery",_G.Setting_table.AutoFruitMas,function(t)
			_G.Setting_table.AutoFruitMas = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoFruitMas)
		end)

		AutoFarm:AddSlider("Kill At",1,25,100,1,function(t)
			_G.Setting_table.KillAt = t
				SaveSetting()
		end)

		local SelectMaterial = AutoFarm:AddDropdown("Select Material",MaterialMethod,_G.Setting_table.SelectMaterial,false,function(t)
			_G.Setting_table.SelectMaterial = t
				SaveSetting()
		end)

		AutoFarm:AddToggle("Auto Farm Material",_G.Setting_table.AutoFarmMaterial,function(t)
			_G.Setting_table.AutoFarmMaterial = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoFarmMaterial)
		end)

		local SelectBoss = AutoFarm:AddDropdown("Select Boss",Bosses,_G.Setting_table.SelectBoss,false,function(t)
			_G.Setting_table.SelectBoss = t
				SaveSetting()
		end)

		AutoFarm:AddButton("Refresh Boss",function()
			for i,v in pairs(Bosses) do
				SelectBoss:Remove(v)
			end
			for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
				pcall(function()
					if string.find(v.Name,"Boss") then
						table.insert(Bosses,v.Name)
						SelectBoss:Add(v.Name)
					end
				end)
			end
		end)

		AutoFarm:AddToggle("Auto Farm Boss",_G.Setting_table.AutoFarmBoss,function(t)
			_G.Setting_table.AutoFarmBoss = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoFarmBoss)
		end)

		AutoFarm:AddToggle("Auto Farm All Boss",_G.Setting_table.AutoFarmAllBoss,function(t)
			_G.Setting_table.AutoFarmAllBoss = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoFarmAllBoss)
		end)

		AutoFarm:AddSeperator("Auto Melee")

		AutoFarm:AddToggle("Auto Superhuman",_G.Setting_table.AutoSuperhuman,function(t)
			_G.Setting_table.AutoSuperhuman = t
				SaveSetting()
		end)
		AutoFarm:AddToggle("Auto Godhuman",_G.Setting_table.AutoGodhuman,function(t)
			_G.Setting_table.AutoGodhuman = t
				SaveSetting()
		end)

		AutoFarm:AddToggle("Auto Death Step",_G.Setting_table.AutoDeathStep,function(t)
			_G.Setting_table.AutoDeathStep = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoDeathStep)
		end)

		AutoFarm:AddToggle("Auto Death Step Hop",_G.Setting_table.AutoDeathStepHop,function(t)
			_G.Setting_table.AutoDeathStepHop = t
				SaveSetting()
		end)

		AutoFarm:AddToggle("Auto Sharkman Karate",_G.Setting_table.AutoSharkman,function(t)
			_G.Setting_table.AutoSharkman = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoSharkman)
		end)

		AutoFarm:AddToggle("Auto Sharkman Karate Hop",_G.Setting_table.AutoSharkmanHop,function(t)
			_G.Setting_table.AutoSharkmanHop = t
				SaveSetting()
		end)

		AutoFarm:AddToggle("Auto Electric Claw",_G.Setting_table.AutoElectricClaw,function(t)
			_G.Setting_table.AutoElectricClaw = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoElectricClaw)
		end)

		AutoFarm:AddToggle("Auto Dragon Talon",_G.Setting_table.AutoDragonTalon,function(t)
			_G.Setting_table.AutoDragonTalon = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoDragonTalon)
		end)

		if game.PlaceId == 2753915549 then
		AutoFarm:AddSeperator("Sea 1")

		AutoFarm:AddToggle("Auto Saber",_G.Setting_table.AutoSaber,function(t)
			_G.Setting_table.AutoSaber = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoSaber)
		end)

		AutoFarm:AddToggle("Auto Sea 2",_G.Setting_table.AutoSea2,function(t)
			_G.Setting_table.AutoSea2 = t
				SaveSetting()
			--CancelTween(_G.Setting_table.AutoSea2)
		end)

		elseif game.PlaceId == 4442272183 then
		AutoFarm:AddSeperator("Sea 2")

		AutoFarm:AddToggle("Auto Sea 3",_G.Setting_table.AutoSea3,function(t)
			_G.Setting_table.AutoSea3 = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoSea3)
		end)
		AutoFarm:AddToggle("Auto Factory",_G.Setting_table.AutoFactory,function(t)
			_G.Setting_table.AutoFactory = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoFactory)
		end)
		AutoFarm:AddToggle("Auto Bartilo",_G.Setting_table.AutoBartilo,function(t)
			_G.Setting_table.AutoBartilo = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoBartilo)
		end)

		AutoFarm:AddToggle("Auto Rengoku",_G.Setting_table.AutoRengoku,function(t)
			_G.Setting_table.AutoRengoku = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoRengoku)
		end)

		AutoFarm:AddToggle("Auto Farm Ectoplasm",_G.Setting_table.AutoEctoplasm,function(t)
			_G.Setting_table.AutoEctoplasm = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoEctoplasm)
		end)

		AutoFarm:AddToggle("Auto Race V2",_G.Setting_table.AutoRaceV2,function(t)
			_G.Setting_table.AutoRaceV2 = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoRaceV2)
		end)

		AutoFarm:AddToggle("Auto Legendary sword",_G.Setting_table.AutoLegendarysword,function(t)
			_G.Setting_table.AutoLegendarysword = t
				SaveSetting()
		end)

		AutoFarm:AddToggle("Auto Legendary sword Hop",_G.Setting_table.AutoLegendaryswordHop,function(t)
			_G.Setting_table.AutoLegendaryswordHop = t
				SaveSetting()
		end)

		elseif game.PlaceId == 7449423635 then
		AutoFarm:AddSeperator("Sea 3")

		AutoFarm:AddToggle("Auto Elite",_G.Setting_table.AutoElite,function(t)
			_G.Setting_table.AutoElite = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoElite)
		end)

		AutoFarm:AddToggle("Auto Musketeer Hat",_G.Setting_table.AutoMusketeerHat,function(t)
			_G.Setting_table.AutoMusketeerHat = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoMusketeerHat)
		end)

		AutoFarm:AddToggle("Auto Rip Indra",_G.Setting_table.AutoIndra,function(t)
			_G.Setting_table.AutoIndra = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoIndra)
		end)

		AutoFarm:AddToggle("Auto Farm Bone",_G.Setting_table.AutoFarmBone,function(t)
			_G.Setting_table.AutoFarmBone = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoFarmBone)
		end)
		CakeRemain = AutoFarm:AddLabel("Loading")
		AutoFarm:AddToggle("Auto Kill Cake Mon",_G.Setting_table.AutoCakeMon,function(t)
			_G.Setting_table.AutoCakeMon = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoCakeMon)
		end)

		AutoFarm:AddToggle("Auto Cake Prince",_G.Setting_table.AutoDoughKingV1,function(t)
			_G.Setting_table.AutoDoughKingV1 = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoDoughKingV1)
		end)

		AutoFarm:AddToggle("Auto Dough King",_G.Setting_table.AutoDoughKingV2,function(t)
			_G.Setting_table.AutoDoughKingV2 = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoDoughKingV2)
		end)
		end
		local SelectWeapon = SelectSection:AddDropdown("Select Weapon Type",{"Melee","Blox Fruit","Sword","Gun"},_G.Setting_table.WeaponType,false,function(t)
			_G.Setting_table.WeaponType = t
				SaveSetting()
		end)

		local FarmMethod = SelectSection:AddDropdown("Select Method",{"Auto Farm Quest","Secret Func. (Not done)","Auto Farm No Quest","Auto Farm Nearest"},_G.Setting_table.Mode,false,function(t)
			_G.Setting_table.Mode = t
				SaveSetting()
		end)

		Settings:AddToggle("Auto Buso",true,function(t)
			_G.Setting_table.AutoBuso = t
				SaveSetting()
		end)
		Settings:AddToggle("Auto Ken",true,function(t)
			_G.Setting_table.AutoKen = t
				SaveSetting() 
		end)
		Settings:AddToggle("Auto Set Home",false,function(t)
			_G.Setting_table.AutoSetSpawn = t
				SaveSetting()
		end)
		Settings:AddToggle("No Clip",true,function(t)
			_G.Setting_table.NoClip = t
				SaveSetting()
		end)
		Settings:AddToggle("Super Fast Attack",true,function(t)
			_G.Setting_table.SuperFastAttack = t
				SaveSetting()
		end)

		Settings:AddToggle("Bring Mob",true,function(t)
			_G.Setting_table.Bring = t
				SaveSetting()
		end)

		Settings:AddToggle("White Screen",false,function(t)
			_G.Setting_table.WhiteScreen = t
				SaveSetting()
		end)

		Settings:AddToggle("Close damage pop up",true,function(t)
			_G.Setting_table.DisableDamage = t
				SaveSetting()
		end)

		Autostats:AddToggle("Auto Melee",_G.Setting_table.Melee,function(t)
			_G.Setting_table.Melee = t
				SaveSetting()
		end)

		Autostats:AddToggle("Auto Defense",_G.Setting_table.Def,function(t)
			_G.Setting_table.Def = t
				SaveSetting()
		end)
		Autostats:AddToggle("Auto Sword",_G.Setting_table.Sword,function(t)
			_G.Setting_table.Sword = t
				SaveSetting()
		end)
		Autostats:AddToggle("Auto Gun",_G.Setting_table.Gun,function(t)
			_G.Setting_table.Gun = t
				SaveSetting()
		end)
		Autostats:AddToggle("Auto Blox Fruit",_G.Setting_table.BF,function(t)
			_G.Setting_table.BF = t
				SaveSetting()
		end)

		AutoSkill:AddToggle("Auto Skill Z",true,function(t)
			_G.Setting_table.SkillZ = t
				SaveSetting()
		end)
		AutoSkill:AddToggle("Auto Skill X",true,function(t)
			_G.Setting_table.SkillX = t
				SaveSetting()
		end)
		AutoSkill:AddToggle("Auto Skill C",true,function(t)
			_G.Setting_table.SkillC = t
				SaveSetting()
		end)
		AutoSkill:AddToggle("Auto Skill V",true,function(t)
			_G.Setting_table.SkillV = t
				SaveSetting()
		end)

		CustomMethod:AddSlider("Fast Attack Delay ",0,_G.Setting_table.AttackDelay,10,1,function(t)
			_G.Setting_table.AttackDelay = t
				SaveSetting()
		end)

		CustomMethod:AddSlider("Position X",-40,_G.Setting_table.X,100,1,function(t)
			_G.Setting_table.X = t
				SaveSetting()
		end)
		CustomMethod:AddSlider("Position Y",-40,_G.Setting_table.Y,100,1,function(t)
			_G.Setting_table.Y = t
				SaveSetting()
		end)
		CustomMethod:AddSlider("Position Z",-40,_G.Setting_table.Z,100,1,function(t)
			_G.Setting_table.Z = t
				SaveSetting()
		end)

		Redeem:AddButton("Redeem All Code",function()
			for i,v in pairs(code) do
				pcall(function()
					RedeemCode(v)
				end)
			end
		end)

		Fake:AddToggle("Fake Stats",_G.Setting_table.FakeStats,function(t)
			_G.Setting_table.FakeStats = t
				SaveSetting()
		end)

		Fake:AddTextbox("Fake Beli Value",_G.Setting_table.BeliVal,function(t)
			_G.Setting_table.BeliVal = t
				SaveSetting()
		end)

		Fake:AddTextbox("Fake Level Value",_G.Setting_table.LevelVal,function(t)
			_G.Setting_table.LevelVal = t
				SaveSetting()
		end)

		Lock:AddToggle("Lock Stats",_G.Setting_table.LockStats,function(t)
			_G.Setting_table.LockStats = t
				SaveSetting()
		end)
		Lock:AddTextbox("Lock Beli Value",_G.Setting_table.BeliValue,function(t)
			_G.Setting_table.BeliValue = t
				SaveSetting()onumber(t)
		end)
		Lock:AddTextbox("Lock Fragment Value",_G.Setting_table.FragmentValue,function(t)
			_G.Setting_table.FragmentValue = t
				SaveSetting()onumber(t)
		end)

		Lock:AddTextbox("Lock Level Value",_G.Setting_table.LevelValue,function(t)
			_G.Setting_table.LevelValue = t
				SaveSetting()onumber(t)
		end)

		if game.PlaceId == 2753915549 then
		IslandTP:AddButton("Marine Island",function()
			BTP(CFrame.new(-2850.35888671875, 41.04860305786133, 1979.0179443359375))
		end)
		IslandTP:AddButton("Pirate Island",function()
			BTP(CFrame.new(1041.8861083984375, 16.308591842651367, 1424.93701171875))
		end)
		IslandTP:AddButton("Colosseum",function()
			BTP(CFrame.new(-1546.6171875, 7.424377918243408, -3021.305419921875))
		end)
		IslandTP:AddButton("Desert",function()
			BTP(CFrame.new(1330.6829833984375, 101.7236328125, 4489.30615234375))
		end)
		IslandTP:AddButton("Water 7",function()
 
			 BTP(CFrame.new(5420.33642578125, 429.39251708984375, 4396.38720703125))
		end)
		IslandTP:AddButton("Jungle",function()
 
			 BTP(CFrame.new(-1511.501953125, 38.879093170166016, 15.329108238220215))
		end)
		IslandTP:AddButton("Marine Fort",function()
 
			 BTP(CFrame.new(-4820.69921875, 20.686969757080078, 4359.85302734375))
		end)
		IslandTP:AddButton("Middle Town",function()
 
			 BTP(CFrame.new(-703.16748046875, 7.887283802032471, 1575.1864013671875))
		end)
		IslandTP:AddButton("Pirate Village",function()
 
			 BTP(CFrame.new(-946.40576171875, 16.787080764770508, 3846.512451171875))
		end)
		IslandTP:AddButton("Prison",function()
 
			 BTP(CFrame.new(5270.5693359375, 161.84872436523438, 844.7282104492188))
		end)
		IslandTP:AddButton("Sky 1",function()
 
			 BTP(CFrame.new(-4823.9208984375, 717.7313232421875, -2633.15576171875))
		end)
		IslandTP:AddButton("Sky 2",function()
 
			 BTP(CFrame.new(-7987.13818359375, 5814.02880859375, -1958.1417236328125))
		end)
		IslandTP:AddButton("Snow",function()
 
			 BTP(CFrame.new(1448.4190673828125, 37.38336944580078, -1202.0010986328125))
		end)
		IslandTP:AddButton("Under Water",function()
 
			 BTP(CFrame.new(61161.515625, 18.90582275390625, 1382.89306640625))
		end)
		IslandTP:AddButton("Volcano",function()
 
			 BTP(CFrame.new(-5369.56787109375, 9.025712966918945, 8486.3447265625))
		end)
	elseif game.PlaceId == 4442272183 then
		IslandTP:AddButton("Cafe",function()
 
			 BTP(CFrame.new(-382, 73.05394744873047, 356))
		end)
		IslandTP:AddButton("Green Zone",function()
 
			 BTP(CFrame.new(-2283.271240234375, 73.00115966796875, -2781.27587890625))
		end)
		IslandTP:AddButton("Colosseum",function()

			 BTP(CFrame.new(-1836, 44.32720184326172, 1642))
		end)
		IslandTP:AddButton("Dark Arena",function()

			 BTP(CFrame.new(3948, 13.384385108947754, -3479))
		end)
		IslandTP:AddButton("Graveyard",function()

			 BTP(CFrame.new(-5710, 126.0670166015625, -775))
		end)
		IslandTP:AddButton("Cursed Ship (inside)",function()

			 BTP(CFrame.new(848.0890502929688, 125.09214782714844, 32874.5703125))
		end)
		IslandTP:AddButton("Law Lab",function()

			 BTP(CFrame.new(-5542, 329.0755310058594, -5924))
		end)
		IslandTP:AddButton("Hot and Cold",function()

			 BTP(CFrame.new(-5906.7373046875, 18.35700798034668, -5103.9912109375))
		end)
		IslandTP:AddButton("Mainsion",function()

			 BTP(CFrame.new(-405.3452453613281, 332.0955810546875, 708.4933471679688))
		end)
		IslandTP:AddButton("Raid Room",function()

			 BTP(CFrame.new(-6503, 249.566650390625, -4495))
		end)
		IslandTP:AddButton("Mini island",function()

			 BTP(CFrame.new(4756.56005859375, 8.353705406188965, 2857.84912109375))
		end)
		IslandTP:AddButton("Forgotten Island",function()

			 BTP(CFrame.new(-2956.243408203125, 115.8813247680664, -9981.0693359375))
		end)
		IslandTP:AddButton("Snow Mountaain",function()

			 BTP(CFrame.new(1210, 429.4569091796875, -4663))
		end)
		IslandTP:AddButton("Snow Castle",function()

			 BTP(CFrame.new(5541.52294921875, 28.402585983276367, -6354.9150390625))
		end)
	elseif game.PlaceId == 7449423635 then
		IslandTP:AddButton("Port",function()
 
			 BTP(CFrame.new(-337.5281982421875, 6.764979839324951, 5317.39990234375))
		end)
		IslandTP:AddButton("Cake Island",function()
 
			 BTP(CFrame.new(-2098.970458984375, 69.30995178222656, -12128.359375))
		end)
		IslandTP:AddButton("Peanut Island",function()
 
			 BTP(CFrame.new(-2037.8001708984375, 9.71238899230957, -9948.2021484375))
		end)
		IslandTP:AddButton("Ice Cream Island",function()
 
			 BTP(CFrame.new(-917.5485229492188, 56.28582000732422, -10858.6962890625))
		end)
		IslandTP:AddButton("Chocolate Island",function()
 
			 BTP(CFrame.new(379.1396179199219, 126.6269302368164, -12720.83984375))
		end)
		IslandTP:AddButton("Great Tree",function()
 
			 BTP(CFrame.new(2486.255126953125, 273.0214538574219, -7078.86328125))
		end)
		IslandTP:AddButton("Haunted Castle",function()
 
			 BTP(CFrame.new(-9515.0009765625, 142.1398468017578, 5534.05029296875))
		end)
		IslandTP:AddButton("Hydra Island",function()
 
			 BTP(CFrame.new(5204.13037109375, 601.6182861328125, 496.2370300292969))
		end)
		IslandTP:AddButton("Sea Castle",function()
 
			 BTP(CFrame.new(-5099.86376953125, 314.550537109375, -2979.5771484375))
		end)
		IslandTP:AddButton("Mansion",function()
 
			 BTP(CFrame.new(-12549.203125, 337.20330810546875, -7521.52978515625))
		end)
	end

		if game.PlaceId == 2753915549 then
		IslandTween:AddButton("Marine Island",function()
			NewTween(CFrame.new(-2850.35888671875, 41.04860305786133, 1979.0179443359375))
		end)
		IslandTween:AddButton("Pirate Island",function()
			NewTween(CFrame.new(1041.8861083984375, 16.308591842651367, 1424.93701171875))
		end)
		IslandTween:AddButton("Colosseum",function()
			NewTween(CFrame.new(-1546.6171875, 7.424377918243408, -3021.305419921875))
		end)
		IslandTween:AddButton("Desert",function()
			NewTween(CFrame.new(1330.6829833984375, 101.7236328125, 4489.30615234375))
		end)
		IslandTween:AddButton("Water 7",function()
			NewTween(CFrame.new(5420.33642578125, 429.39251708984375, 4396.38720703125))
		end)
		IslandTween:AddButton("Jungle",function()
			NewTween(CFrame.new(-1511.501953125, 38.879093170166016, 15.329108238220215))
		end)
		IslandTween:AddButton("Marine Fort",function()
			NewTween(CFrame.new(-4820.69921875, 20.686969757080078, 4359.85302734375))
		end)
		IslandTween:AddButton("Middle Town",function()
			NewTween(CFrame.new(-703.16748046875, 7.887283802032471, 1575.1864013671875))
		end)
		IslandTween:AddButton("Pirate Village",function()
			NewTween(CFrame.new(-946.40576171875, 16.787080764770508, 3846.512451171875))
		end)
		IslandTween:AddButton("Prison",function()
			NewTween(CFrame.new(5270.5693359375, 161.84872436523438, 844.7282104492188))
		end)
		IslandTween:AddButton("Sky 1",function()
			NewTween(CFrame.new(-4823.9208984375, 717.7313232421875, -2633.15576171875))
		end)
		IslandTween:AddButton("Sky 2",function()
			NewTween(CFrame.new(-7987.13818359375, 5814.02880859375, -1958.1417236328125))
		end)
		IslandTween:AddButton("Snow",function()
			NewTween(CFrame.new(1448.4190673828125, 37.38336944580078, -1202.0010986328125))
		end)
		IslandTween:AddButton("Under Water",function()
			NewTween(CFrame.new(61161.515625, 18.90582275390625, 1382.89306640625))
		end)
		IslandTween:AddButton("Volcano",function()
			NewTween(CFrame.new(-5369.56787109375, 9.025712966918945, 8486.3447265625))
		end)
		end
		if game.PlaceId == 4442272183 then
		IslandTween:AddButton("Cafe",function()
			NewTween(CFrame.new(-382, 73.05394744873047, 356))
		end)
		IslandTween:AddButton("Green Zone",function()
			NewTween(CFrame.new(-2283.271240234375, 73.00115966796875, -2781.27587890625))
		end)
		IslandTween:AddButton("Colosseum",function()
			NewTween(CFrame.new(-1836, 44.32720184326172, 1642))
		end)
		IslandTween:AddButton("Dark Arena",function()
			NewTween(CFrame.new(3948, 13.384385108947754, -3479))
		end)
		IslandTween:AddButton("Graveyard",function()
			NewTween(CFrame.new(-5710, 126.0670166015625, -775))
		end)
		IslandTween:AddButton("Cursed Ship (inside)",function()
			NewTween(CFrame.new(848.0890502929688, 125.09214782714844, 32874.5703125))
		end)
		IslandTween:AddButton("Law Lab",function()
			NewTween(CFrame.new(-5542, 329.0755310058594, -5924))
		end)
		IslandTween:AddButton("Hot and Cold",function()
			NewTween(CFrame.new(-5906.7373046875, 18.35700798034668, -5103.9912109375))
		end)
		IslandTween:AddButton("Mainsion",function()
			NewTween(CFrame.new(-405.3452453613281, 332.0955810546875, 708.4933471679688))
		end)
		IslandTween:AddButton("Raid Room",function()
			NewTween(CFrame.new(-6503, 249.566650390625, -4495))
		end)
		IslandTween:AddButton("Mini island",function()
			NewTween(CFrame.new(4756.56005859375, 8.353705406188965, 2857.84912109375))
		end)
		IslandTween:AddButton("Forgotten Island",function()
			NewTween(CFrame.new(-2956.243408203125, 115.8813247680664, -9981.0693359375))
		end)
		IslandTween:AddButton("Snow Mountaain",function()
			NewTween(CFrame.new(1210, 429.4569091796875, -4663))
		end)
		IslandTween:AddButton("Snow Castle",function()
			NewTween(CFrame.new(5541.52294921875, 28.402585983276367, -6354.9150390625))
		end)
		end

		if game.PlaceId == 7449423635 then
		IslandTween:AddButton("Port",function()
			NewTween(CFrame.new(-337.5281982421875, 6.764979839324951, 5317.39990234375))
		end)
		IslandTween:AddButton("Cake Island",function()
			NewTween(CFrame.new(-2098.970458984375, 69.30995178222656, -12128.359375))
		end)
		IslandTween:AddButton("Peanut Island",function()
			NewTween(CFrame.new(-2037.8001708984375, 9.71238899230957, -9948.2021484375))
		end)
		IslandTween:AddButton("Ice Cream Island",function()
			NewTween(CFrame.new(-917.5485229492188, 56.28582000732422, -10858.6962890625))
		end)
		IslandTween:AddButton("Chocolate Island",function()
			NewTween(CFrame.new(379.1396179199219, 126.6269302368164, -12720.83984375))
		end)
		IslandTween:AddButton("Great Tree",function()
			NewTween(CFrame.new(2486.255126953125, 273.0214538574219, -7078.86328125))
		end)
		IslandTween:AddButton("Haunted Castle",function()
			NewTween(CFrame.new(-9515.0009765625, 142.1398468017578, 5534.05029296875))
		end)
		IslandTween:AddButton("Hydra Island",function()
			NewTween(CFrame.new(5204.13037109375, 601.6182861328125, 496.2370300292969))
		end)
		IslandTween:AddButton("Sea Castle",function()
			NewTween(CFrame.new(-5099.86376953125, 314.550537109375, -2979.5771484375))
		end)
		IslandTween:AddButton("Mansion",function()
			NewTween(CFrame.new(-12549.203125, 337.20330810546875, -7521.52978515625))
		end)
		end

		if game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
			Raid:AddToggle("Auto Raid",_G.Setting_table.AutoRaid,function(t)
				_G.Setting_table.AutoRaid = t
				SaveSetting()
			end)
			Raid:AddToggle("Auto Fully Raid",_G.Setting_table.AutoFullyRaid,function(t)
				_G.Setting_table.AutoFullyRaid = t
				SaveSetting()
			end)
			
			local RaidsChip = RaidProperty:AddDropdown("Select Raid Chip",Chip,_G.Setting_table.DunType,false,function(t)
				_G.Setting_table.DunType = t
				SaveSetting()
			end)
			RaidProperty:AddToggle("Auto Buy Chip",_G.Setting_table.BuyChip,function(t)
				_G.Setting_table.BuyChip = t
				SaveSetting()
			end)
			RaidProperty:AddToggle("Auto Next Island",_G.Setting_table.AutoNextIsland,function(t)
				_G.Setting_table.AutoNextIsland = t
				SaveSetting()
				----CancelTween(_G.Setting_table.AutoNextIsland)
			end)
			RaidProperty:AddToggle("Kill Aura",_G.Setting_table.Killaura,function(t)
				_G.Setting_table.Killaura = t
				SaveSetting()
			end)
			RaidProperty:AddToggle("Auto Awaken",_G.Setting_table.AutoAwake,function(t)
				_G.Setting_table.AutoAwake = t
				SaveSetting()
			end)
		else
			Raid:AddLabel("Work on sea 2-3 : ❌")
			RaidProperty:AddLabel("Work on sea 2-3 : ❌")
		end
		if game.PlaceId == 4442272183 then
			LawRaid:AddToggle("Auto Law Raid",_G.Setting_table.AutoLawRaid,function(t)
				_G.Setting_table.AutoLawRaid = t
				SaveSetting()
				----CancelTween(_G.Setting_table.AutoLawRaid)
			end)
			LawRaidProperty:AddButton("Auto Buy Law Chip",function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
			end)
			LawRaidProperty:AddToggle("Auto Buy Law Chip",_G.Setting_table.BuyLaw,function(t)
				_G.Setting_table.BuyLaw = t
				SaveSetting()
			end)
		else
			LawRaid:AddLabel("Work on sea 2 : ❌")
			LawRaidProperty:AddLabel("Work on sea 2 : ❌")
		end

		Shop:AddDropdown("Select fruit",Fruit,_G.Setting_table.SelectFruit,false,function(t)
			_G.Setting_table.SelectFruit = t
				SaveSetting()
		end)
		Shop:AddToggle("Auto Buy Fruit",_G.Setting_table.AutoBuyFruit,function(t)
			_G.Setting_table.AutoBuyFruit = t
				SaveSetting()
		end)
		Shop:AddToggle("Auto Bone Random",_G.Setting_table.AutoBoneRandom,function(t)
			_G.Setting_table.AutoBoneRandom = t
				SaveSetting()
		end)
		Shop:AddToggle("Auto Random Fruit",_G.Setting_table.AutoRandom,function(t)
			_G.Setting_table.AutoRandom = t
				SaveSetting()
		end)
		Shop:AddToggle("Auto Haki Color",_G.Setting_table.AutoHakiColor,function(t)
			_G.Setting_table.AutoHakiColor = t
				SaveSetting()
		end)
		Shop:AddButton("Random Fruit",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin" , "Buy")
		end)
		BuyWeapon:AddButton("Buy Legendary Sword",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
		end)

		MeleeBuy("Black Leg","BuyBlackLeg")
		MeleeBuy("Electro","BuyElectro")
		MeleeBuy("Fishman Karate","BuyFishmanKarate")
		MeleeBuy("Dragon Claw","BlackbeardReward","DragonClaw","2")
		MeleeBuy("Superhuman","BuySuperhuman")
		MeleeBuy("Death Step","BuyDeathStep")
		MeleeBuy("Sharkman Karate","BuySharkmanKarate")
		MeleeBuy("Electric Claw","BuyElectricClaw")
		MeleeBuy("Dragon Talon","BuyDragonTalon")
		MeleeBuy("God Human","BuyGodhuman")

		Haki:AddButton("Buy Geppo",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki" , "Geppo")
		end)

		Haki:AddButton("Buy Buso",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki" , "Buso")
		end)

		Haki:AddButton("Buy Soru",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki" , "Soru")
		end)
		Haki:AddButton("Buy Ken",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
		end)

		Openui:AddButton("Fruit Shop",function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
		end)
		Openui:AddButton("Title",function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
		end)
		Openui:AddButton("Color",function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
		end)

		SeaTP:AddButton("Teleport Sea 1",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
		end)
		SeaTP:AddButton("Teleport Sea 2",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
		end)
		SeaTP:AddButton("Teleport Sea 3",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
		end)

		Server:AddButton("Hop to low server",function()
			Teleport()
		end)
		Abilities:AddToggle("Store Fruit",_G.Setting_table.StoreFruit,function(t)
			_G.Setting_table.StoreFruit = t
				SaveSetting()
		end)
		Abilities:AddToggle("Auto Collect Chect",false,function(t)
			_G.Setting_table.AutoCollectChest = t
				SaveSetting()
			----CancelTween(_G.Setting_table.AutoCollectChest)
		end)
		Abilities:AddToggle("Tween to mouse",false,function(t)
			_G.Setting_table.TweenMouse = t
				SaveSetting()
		end)
		Abilities:AddToggle("Players ESP",false,function(t)
			_G.Setting_table.PlyEsp = t
				SaveSetting()
		end)
		Abilities:AddToggle("Fruits ESP",false,function(t)
			_G.Setting_table.FruitEsp = t
				SaveSetting()
		end)
		Abilities:AddToggle("Real Fruits ESP",false,function(t)
			_G.Setting_table.RealFruitEsp = t
				SaveSetting()
		end)
		if Sea2 then
			Abilities:AddToggle("Flower ESP",false,function(t)
				_G.Setting_table.FlowerEsp = t
				SaveSetting()
			end)
		end
		Abilities:AddToggle("Chest ESP",false,function(t)
			_G.Setting_table.ChestESP = t
				SaveSetting()
		end)
		Abilities:AddToggle("Island ESP",false,function(t)
			_G.Setting_table.IslandESP = t
				SaveSetting()
		end)
		Abilities:AddToggle("Walk on water",true,function(t)
			_G.Setting_table.WalkOnWater = t
				SaveSetting()
		end)
		Abilities:AddButton("Remove fog",function()
			game.Lighting.Sky:Destroy()
		end)
		
		Abilities:AddDropdown("Select steal fruit type",{"Grab Fruit","Teleport to Fruit"},_G.Setting_table.StealType,false,function(t)
			_G.Setting_table.StealType = t
				SaveSetting()
		end)
		Abilities:AddToggle("Steal Fruit",_G.Setting_table.StealFruit,function(t)
			_G.Setting_table.StealFruit = t
				SaveSetting()
		end)

		Other:AddButton("Join Pirate",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
		end)
		Other:AddButton("Join Marine",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
		end)

		StatusMain:AddLabel("Username : "..game.Players.LocalPlayer.Name)
		local sea = StatusMain:AddLabel("Sea : ")
		local OnlineTimer = StatusMain:AddLabel("Loading..")
		StatusMain:AddLabel("Date : "..os.date("%d".." ".."%B".." ".."%Y"))

		local Black_Leg = MeleeStatus:AddLabel("Black Leg : ❌")
		local Electro_ = MeleeStatus:AddLabel("Electro : ❌")
		local Fishman_Karate = MeleeStatus:AddLabel("Fishman Karate : ❌")
		local Dragon_Claw = MeleeStatus:AddLabel("Dragon Claw : ❌")
		local Superhuman_ = MeleeStatus:AddLabel("Superhuman : ❌")
		local Death_Step = MeleeStatus:AddLabel("Death Step : ❌")
		local Sharkman_Karate = MeleeStatus:AddLabel("Sharkman Karate : ❌")
		local Electric_Claw = MeleeStatus:AddLabel("Electric Claw : ❌")
		local Dragon_Talon = MeleeStatus:AddLabel("Dragon Talon : ❌")
		local Godhuman_ = MeleeStatus:AddLabel("Godhuman : ❌")

		local CDK =  SwordStatus:AddLabel("Cursed Dual Katana : ❌")
		local HS =  SwordStatus:AddLabel("Hallow Scythe : ❌")
		local TTK =  SwordStatus:AddLabel("True Triple Katana : ❌")
		local ST =  SwordStatus:AddLabel("Spikey Trident : ❌")
		local BS =  SwordStatus:AddLabel("Buddy Sword : ❌")
		local Tushi =  SwordStatus:AddLabel("Tushita : ❌")
		local Yama =  SwordStatus:AddLabel("Yama : ❌")
		local DD =  SwordStatus:AddLabel("Dark Dagger : ❌")
		local P2F =  SwordStatus:AddLabel("Pole (2nd Form) : ❌")
		local Shi =  SwordStatus:AddLabel("Shisui : ❌")
		local Wan =  SwordStatus:AddLabel("Wando : ❌")
		local Sadd =  SwordStatus:AddLabel("Saddi : ❌")
		local Ren =  SwordStatus:AddLabel("Rengoku : ❌")
		local Saber =  SwordStatus:AddLabel("Saber : ❌")

		RequestHook:AddTextbox("Request Function","",function(t)
			ReqText = t
				SaveSetting()ostring(t)
		end)

		RequestHook:AddButton("Send Request",function()
			if ReqSending and typeof(_G.Setting_table.id) == "string" then
				ReqSending = false
				SendReq(ReqText,_G.Setting_table.id)
				wait(350)
				ReqSending = true
			end
		end)

		BugHook:AddTextbox("Report Bug","",function(t)
			BugText = tostring(t)
		end)

		BugHook:AddButton("Send Bug",function()
			if BugSending and typeof(_G.Setting_table.id) == "string" then
				BugSending = false
				SendBug(BugText,_G.Setting_table.id)
				wait(350)
				BugSending = true
			end
		end)

		if game.PlaceId == 2753915549 then
			sea:Set("Sea : 1")
		elseif game.PlaceId == 4442272183 then
			sea:Set("Sea : 2")
		elseif game.PlaceId == 7449423635 then
			sea:Set("Sea : 3")
		end
		spawn(function()
			while task.wait() do
				pcall(function()
					if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)) == 88 then
						CakeRemain:Set("Portal Close : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true),39,41))
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)) == 87 then
						CakeRemain:Set("Portal Close : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true),39,40))
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)) == 86 then
						CakeRemain:Set("Portal Close : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true),39))
					else
						CakeRemain:Set("Portal opening : ✅")
					end
				end)
			end
		end)

		spawn(function()
			while task.wait(1.5) do
				pcall(function()
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg",true) == 1 then
						Black_Leg:Set("Black Leg : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro",true) == 1 then
						Electro_:Set("Electro : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate",true) == 1 then
						Fishman_Karate:Set("Fishman Karate : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1") == 1 then
						Dragon_Claw:Set("Dragon Claw : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
						Superhuman_:Set("Superhuman : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						Death_Step:Set("Death Step : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
						Sharkman_Karate:Set("Sharkman Karate : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
						Electric_Claw:Set("Electric Claw : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
						Dragon_Talon:Set("Dragon Talon : ✅")
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) == 1 then
						Godhuman_:Set("Godhuman : ✅")
					end
				end)
			end
		end)

		spawn(function()
			while task.wait(1.5) do
				pcall(function()
					for i,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
						if v.Name == "Cursed Dual Katana" then
							CDK:Set("Cursed Dual Katana : ✅")
						end
						if v.Name == "Hallow Scythe" then
							HS:Set("Hallow Scythe : ✅")
						end
						if v.Name == "True Triple Katana" then
							TTK:Set("True Triple Katana : ✅")
						end
						if v.Name == "Spikey Trident" then
							ST:Set("Spikey Trident : ✅")
						end
						if v.Name == "Buddy Sword" then
							BS:Set("Buddy Sword : ✅")
						end
						if v.Name == "Tushita" then
							Tushi:Set("Tushita : ✅")
						end
						if v.Name == "Yama" then
							Yama:Set("Yama : ✅")
						end
						if v.Name == "Dark Dagger" then
							DD:Set("Dark Dagger : ✅")
						end
						if v.Name == "Pole (2nd Form)" then
							P2F:Set("Pole (2nd Form) : ✅")
						end
						if v.Name == "Shisui" then
							Shi:Set("Shisui : ✅")
						end
						if v.Name == "Wando" then
							Wan:Set("Wando : ✅")
						end
						if v.Name == "Saddi" then
							Sadd:Set("Saddi : ✅")
						end
						if v.Name == "Rengoku" then
							Ren:Set("Rengoku : ✅")
						end
						if v.Name == "Saber" then
							Saber:Set("Saber : ✅")
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == _G.Setting_table.WeaponType then
								_G.SWeapon = v.Name
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmSea1 or _G.Setting_table.AutoFarmSea2 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
						end   
						if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
							_G.SWeapon = "Superhuman"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value <= 149999 then
							_G.SWeapon = "Combat"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
							_G.SWeapon = "Black Leg"
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
							_G.SWeapon = "Electro"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
							_G.SWeapon = "Fishman Karate"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
							_G.SWeapon = "Dragon Claw"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSuperhuman then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
						end   
						if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
							_G.SWeapon = "Superhuman"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value <= 149999 then
							_G.SWeapon = "Combat"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
							_G.SWeapon = "Black Leg"
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
							_G.SWeapon = "Electro"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
							_G.SWeapon = "Fishman Karate"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
							_G.SWeapon = "Dragon Claw"
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoGodhuman then
						if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
							_G.SWeapon = "Godhuman"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 then
								_G.SWeapon = "Death Step"
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 then
								_G.SWeapon = "Electric Claw"
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 then
								_G.SWeapon = "Sharkman Karate"
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
								_G.SWeapon = "Dragon Talon"
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
							end 
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:Character("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							end
						end
					end
				end)
			end
		end)

		function CheckQuest()
			local Id = game.PlaceId
			local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
			if Id == 2753915549 then
				if Level == 1 or Level <= 9 then
					Mon = "Bandit [Lv. 5]"
					MonPos = CFrame.new(1198.5999755859375, 38.06475830078125, 1543.47119140625)
					LQuest = 1
					NQuest = "BanditQuest1"
					NameMon = "Bandit"
					CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
				elseif Level == 10 or Level <= 14 then
					Mon = "Monkey [Lv. 14]"
					MonPos = CFrame.new(-1403.5555419921875, 98.59825134277344, 90.24476623535156)
					LQuest = 1
					NQuest = "JungleQuest"
					NameMon = "Monkey"
					CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				elseif Level == 15 or Level <= 29 then
					Mon = "Gorilla [Lv. 20]"
					MonPos = CFrame.new(-1320.2811279296875, 81.85315704345703, -458.73248291015625)
					LQuest = 2
					NQuest = "JungleQuest"
					NameMon = "Gorilla"
					CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				elseif Level == 30 or Level <= 39 then
					Mon = "Pirate [Lv. 35]"
					MonPos = CFrame.new(-1140.37109375, 53.04805374145508, 3972.119384765625)
					LQuest = 1
					NQuest = "BuggyQuest1"
					NameMon = "Pirate"
					CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				elseif Level == 40 or Level <= 59 then
					Mon = "Brute [Lv. 45]"
					MonPos = CFrame.new(-1133.1185302734375, 94.3675537109375, 4307.36376953125)
					LQuest = 2
					NQuest = "BuggyQuest1"
					NameMon = "Brute"
					CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				elseif Level == 60 or Level <= 74 then
					Mon = "Desert Bandit [Lv. 60]"
					MonPos = CFrame.new(978.1805419921875, 21.926359176635742, 4407.97119140625)
					LQuest = 1
					NQuest = "DesertQuest"
					NameMon = "Desert Bandit"
					CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				elseif Level == 75 or Level <= 89 then
					Mon = "Desert Officer [Lv. 70]"
					MonPos = CFrame.new(1558.972900390625, 15.365246772766113, 4280.10302734375)
					LQuest = 2
					NQuest = "DesertQuest"
					NameMon = "Desert Officer"
					CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				elseif Level == 90 or Level <= 99 then
					Mon = "Snow Bandit [Lv. 90]"
					MonPos = CFrame.new(1352.8118896484375, 105.67132568359375, -1324.64697265625)
					LQuest = 1
					NQuest = "SnowQuest"
					NameMon = "Snow Bandit"
					CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				elseif Level == 100 or Level <= 119 then
					Mon = "Snowman [Lv. 100]"
					MonsPos = CFrame.new(1201.8741455078125, 144.61459350585938, -1546.5943603515625)
					LQuest = 2
					NQuest = "SnowQuest"
					NameMon = "Snowman"
					CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				elseif Level == 120 or Level <= 149 then
					Mon = "Chief Petty Officer [Lv. 120]"
					MonPos = CFrame.new(-4855.8466796875, 23.68708038330078, 4308.84814453125)
					LQuest = 1
					NQuest = "MarineQuest2"
					NameMon = "Chief Petty Officer"
					CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 150 or Level <= 174 then
					Mon = "Sky Bandit [Lv. 150]"
					MonPos = CFrame.new(-4951.14501953125, 295.77923583984375, -2899.656005859375)
					LQuest = 1
					NQuest = "SkyQuest"
					NameMon = "Sky Bandit"
					CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				elseif Level == 175 or Level <= 189 then
					Mon = "Dark Master [Lv. 175]"
					MonPos = CFrame.new(-5224.60107421875, 429.73699951171875, -2280.69677734375)
					LQuest = 2
					NQuest = "SkyQuest"
					NameMon = "Dark Master"
					CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				elseif Level == 190 or Level <= 209 then
					Mon = "Prisoner [Lv. 190]"
					MonsPos = CFrame.new(5285.59033203125, 88.68693542480469, 476.51483154296875)
					LQuest = 1
					NQuest = "PrisonerQuest"
					NameMon = "Prisoner"
					CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				elseif Level == 210 or Level <= 249 then
					Mon = "Dangerous Prisoner [Lv. 210]"
					MonsPos = CFrame.new(5543.451171875, 88.6868896484375, 696.1821899414062)
					LQuest = 2
					NQuest = "PrisonerQuest"
					NameMon = "Dangerous Prisoner"
					CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				elseif Level == 250 or Level <= 299 then
					Mon = "Toga Warrior [Lv. 250]"
					MonPos = CFrame.new(-1772.7384033203125, 38.839969635009766, -2745.384521484375)
					LQuest = 1
					NQuest = "ColosseumQuest"
					NameMon = "Toga Warrior"
					CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
				--[[elseif Level == 275 or Level <= 299 then
					Mon = "Gladiator [Lv. 275]"
					MonPos = CFrame.new(-1283.224853515625, 7.567874908447266, -3253.5498046875)
					LQuest = 2
					NQuest = "ColosseumQuest"
					NameMon = "Gladiator"
					CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
				]]
				elseif Level == 300 or Level <= 324 then
					Mon = "Military Soldier [Lv. 300]"
					MonPos = CFrame.new(-5410.20751953125, 11.10084342956543, 8456.4111328125)
					LQuest = 1
					NQuest = "MagmaQuest"
					NameMon = "Military Soldier"
					CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
				elseif Level == 325 or Level <= 374 then
					Mon = "Military Spy [Lv. 325]"
					MonPos = CFrame.new(-5800.2548828125, 98.19547271728516, 8781.802734375)
					LQuest = 2
					NQuest = "MagmaQuest"
					NameMon = "Military Spy"
					CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
				elseif Level == 375 or Level <= 399 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
					end
					Mon = "Fishman Warrior [Lv. 375]"
					MonPos = CFrame.new(60890.0859375, 95.70665740966797, 1546.843017578125)
					LQuest = 1
					NQuest = "FishmanQuest"
					NameMon = "Fishman Warrior"
					CFrameQuest = CFrame.new(61119.890625, 18.50667381286621, 1567.489990234375)
				elseif Level == 400 or Level <= 449 then
					Mon = "Fishman Commando [Lv. 400]"
					MonPos = CFrame.new(61872.09765625, 75.50736999511719, 1403.5740966796875)
					LQuest = 2
					NQuest = "FishmanQuest"
					NameMon = "Fishman Commando"
					CFrameQuest = CFrame.new(61119.890625, 18.50667381286621, 1567.489990234375)
				elseif Level == 450 or Level <= 474 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(3864.53466796875, 5.4081878662109375, -1925.2999267578125)).Magnitude >= 17000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.53466796875, 5.4081878662109375, -1925.2999267578125))
					end
					Mon = "God's Guard [Lv. 450]"
					MonPos = CFrame.new(-4627.390625, 866.9378051757812, -1945.0068359375)
					LQuest = 1
					NQuest = "SkyExp1Quest"
					NameMon = "God's Guard"
					CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
				elseif Level == 475 or Level <= 524 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
					end
					Mon = "Shanda [Lv. 475]"
					MonPos = CFrame.new(-7685.2890625, 5567.029296875, -497.586181640625)
					LQuest = 2
					NQuest = "SkyExp1Quest"
					NameMon = "Shanda"
					CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				elseif Level == 525 or Level <= 549 then
					Mon = "Royal Squad [Lv. 525]"
					MonPos = CFrame.new(-7647.44775390625, 5637.11572265625, -1416.885009765625)
					LQuest = 1
					NQuest = "SkyExp2Quest"
					NameMon = "Royal Squad"
					CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 550 or Level <= 624 then
					Mon = "Royal Soldier [Lv. 550]"
					MonPos = CFrame.new(-7831.77197265625, 5622.3154296875, -1777.7586669921875)
					LQuest = 2
					NQuest = "SkyExp2Quest"
					NameMon = "Royal Soldier"
					CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 625 or Level <= 649 then
					Mon = "Galley Pirate [Lv. 625]"
					MonPos = CFrame.new(5634.70751953125, 95.40705108642578, 4037.620849609375)
					LQuest = 1
					NQuest = "FountainQuest"
					NameMon = "Galley Pirate"
					CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				elseif Level >= 650 then
					Mon = "Galley Captain [Lv. 650]"
					MonPos = CFrame.new(5687.47998046875, 43.858909606933594, 4886.95263671875)
					LQuest = 2
					NQuest = "FountainQuest"
					NameMon = "Galley Captain"
					CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				end
			elseif Id == 4442272183 then
				if Level == 700 or Level <= 724 then
					Mon = "Raider [Lv. 700]"
					LQuest = 1
					NQuest = "Area1Quest"
					NameMon = "Raider"
					CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
					MonPos = CFrame.new(-746,39,2389)
				elseif Level == 725 or Level <= 774 then
					Mon = "Mercenary [Lv. 725]"
					LQuest = 2
					NQuest = "Area1Quest"
					NameMon = "Mercenary"
					CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)	
					--[[if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-950.9469604492188, 73.59642791748047, 1687.7239990234375)).Magnitude >= 200 then
						--repeat task.wait()
							MonPos = CFrame.new(-950.9469604492188, 73.59642791748047, 1687.7239990234375)
						--until (Vector3.new(-950.9469604492188, 73.59642791748047, 1687.7239990234375) - game.Players.LocalPlayer.Character.HumanoidRootPart).Magnitude <= 10
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1101.5570068359375, 73.59659576416016, 1155.75)).Magnitude >= 200 then
						--repeat task.wait()
							MonPos = CFrame.new(-1101.5570068359375, 73.59659576416016, 1155.75)
						--until (Vector3.new(-1101.5570068359375, 73.59659576416016, 1155.75) - game.Players.LocalPlayer.Character.HumanoidRootPart).Magnitude <= 10
					end]]
					MonPos = CFrame.new(-874,141,1312)
				elseif Level == 775 or Level <= 874 then
					Mon = "Swan Pirate [Lv. 775]"
					MonPos = CFrame.new(879.0155029296875, 121.6172103881836, 1236.484619140625)
					LQuest = 1
					NQuest = "Area2Quest"
					NameMon = "Swan Pirate"
					CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				--[[elseif Level == 800 or Level <= 874 then
					Mon = "Factory Staff [Lv. 800]"
					MonPos = CFrame.new(-49.088504791259766, 149.4334259033203, -150.80809020996094)
					NQuest = "Area2Quest"
					LQuest = 2
					NameMon = "Factory Staff"
					CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
					]]
				elseif Level == 875 or Level <= 899 then
					Mon = "Marine Lieutenant [Lv. 875]"
					MonPos = CFrame.new(-2846.595703125, 73.00115966796875, -2985.402099609375)
					LQuest = 1
					NQuest = "MarineQuest3"
					NameMon = "Marine Lieutenant"
					CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				elseif Level == 900 or Level <= 949 then
					Mon = "Marine Captain [Lv. 900]"
					MonPos = CFrame.new(-1838.5380859375, 91.05396270751953, -3209.526611328125)
					LQuest = 2
					NQuest = "MarineQuest3"
					NameMon = "Marine Captain"
					CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				elseif Level == 950 or Level <= 974 then
					Mon = "Zombie [Lv. 950]"
					MonPos = CFrame.new(-5710, 126.0670166015625, -775)
					LQuest = 1
					NQuest = "ZombieQuest"
					NameMon = "Zombie"
					CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				elseif Level == 975 or Level <= 999 then
					Mon = "Vampire [Lv. 975]"
					MonPos = CFrame.new(-6037.7578125, 6.437739849090576, -1326.2755126953125)
					LQuest = 2
					NQuest = "ZombieQuest"
					NameMon = "Vampire"
					CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				elseif Level == 1000 or Level <= 1049 then
					Mon = "Snow Trooper [Lv. 1000]"
					MonPos = CFrame.new(609.858826, 400.119904, -5372.25928)
					LQuest = 1
					NQuest = "SnowMountainQuest"
					NameMon = "Snow Trooper"
					CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				elseif Level == 1050 or Level <= 1099 then
					Mon = "Winter Warrior [Lv. 1050]"
					MonPos = CFrame.new(1240.4923095703125, 460.9142761230469, -5192.29345703125)
					LQuest = 2
					NQuest = "SnowMountainQuest"
					NameMon = "Winter Warrior"
					CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				elseif Level == 1100 or Level <= 1124 then
					Mon = "Lab Subordinate [Lv. 1100]"
					MonPos = CFrame.new(-5780.4345703125, 42.55501174926758, -4482.74853515625)
					LQuest = 1
					NQuest = "IceSideQuest"
					NameMon = "Lab Subordinate"
					CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				elseif Level == 1125 or Level <= 1174 then
					Mon = "Horned Warrior [Lv. 1125]"
					MonPos = CFrame.new(-6349.41015625, 21.453861236572266, -5834.12841796875)
					LQuest = 2
					NQuest = "IceSideQuest"
					NameMon = "Horned Warrior"
					CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				elseif Level == 1175 or Level <= 1199 then
					Mon = "Magma Ninja [Lv. 1175]"
					--[[if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5627.03662109375, 30.024616241455078, -5899.95654296875)).Magnitude >= 200 then
						MonPos = CFrame.new(-5627.03662109375, 30.024616241455078, -5899.95654296875)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5275.21435546875, 39.44550704956055, -6133.7392578125)).Magnitude >= 200 then
						MonPos = CFrame.new(-5275.21435546875, 39.44550704956055, -6133.7392578125)
					end]]
					LQuest = 1
					NQuest = "FireSideQuest"
					NameMon = "Magma Ninja"
					CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
					MonPos = CFrame.new(-5428, 78, -5959)
				elseif Level == 1200 or Level <= 1249 then
					Mon = "Lava Pirate [Lv. 1200]"
					MonPos = CFrame.new(-5232.8466796875, 51.79249954223633, -4729.9609375)
					LQuest = 2
					NQuest = "FireSideQuest"
					NameMon = "Lava Pirate"
					CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				elseif Level == 1250 or Level <= 1274 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(1037.80127, 125.092171, 32911.6016))
					end
					Mon = "Ship Deckhand [Lv. 1250]"
					MonPos = CFrame.new(1197.23583984375, 125.09214782714844, 33047.83984375)
					LQuest = 1
					NQuest = "ShipQuest1"
					NameMon = "Ship Deckhand"
					CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
				elseif Level == 1275 or Level <= 1299 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(1037.80127, 125.092171, 32911.6016))
					end
					Mon = "Ship Engineer [Lv. 1275]"
					MonPos = CFrame.new(922.4091186523438, 43.57904052734375, 32783.21875)
					LQuest = 2
					NQuest = "ShipQuest1"
					NameMon = "Ship Engineer"
					CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
				elseif Level == 1300 or Level <= 1324 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(1037.80127, 125.092171, 32911.6016))
					end
					Mon = "Ship Steward [Lv. 1300]"
					MonPos = CFrame.new(918.0401000976562, 129.07810974121094, 33419.45703125)
					LQuest = 1
					NQuest = "ShipQuest2"
					NameMon = "Ship Steward"
					CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
				elseif Level == 1325 or Level <= 1349 then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(1037.80127, 125.092171, 32911.6016))
					end
					Mon = "Ship Officer [Lv. 1325]"
					MonPos = CFrame.new(1188.7747802734375, 181.18414306640625, 33311.84765625)
					LQuest = 2
					NQuest = "ShipQuest2"
					NameMon = "Ship Officer"
					CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
				elseif Level == 1350 or Level <= 1374 then
					Mon = "Arctic Warrior [Lv. 1350]"
					MonPos = CFrame.new(5984.4443359375, 59.70625686645508, -6170.4990234375)
					LQuest = 1
					NQuest = "FrostQuest"
					NameMon = "Arctic Warrior"
					CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				elseif Level == 1375 or Level <= 1424 then
					Mon = "Snow Lurker [Lv. 1375]"
					MonPos = CFrame.new(5656.3681640625, 43.96525573730469, -6785.47998046875)
					LQuest = 2
					NQuest = "FrostQuest"
					NameMon = "Snow Lurker"
					CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				elseif Level == 1425 or Level <= 1449 then
					Mon = "Sea Soldier [Lv. 1425]"
					--[[if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-3201.64599609375, 35.59043884277344, -9796.525390625)).Magnitude >= 200 then
						MonPos = CFrame.new(-3201.64599609375, 35.59043884277344, -9796.525390625)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-2766.245849609375, 46.5843505859375, -9836.3525390625)).Magnitude >= 200 then
						MonPos = CFrame.new(-2766.245849609375, 46.5843505859375, -9836.3525390625)
					end]]
					LQuest = 1
					NQuest = "ForgottenQuest"
					NameMon = "Sea Soldier"
					CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
					MonPos = CFrame.new(-3038, 15, -9720)
				elseif Level >= 1450 then
					Mon = "Water Fighter [Lv. 1450]"
					MonPos = CFrame.new(-3286.5224609375, 252.3995819091797, -10515.396484375)
					LQuest = 2
					NQuest = "ForgottenQuest"
					NameMon = "Water Fighter"
					CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				end
			elseif Id == 7449423635 then
				if Level == 1500 or Level <= 1524 then
					Mon = "Pirate Millionaire [Lv. 1500]"
					MonPos = CFrame.new(-292.1559753417969, 43.8282470703125, 5582.9287109375)
					LQuest = 1
					NQuest = "PiratePortQuest"
					NameMon = "Pirate Millionaire"
					CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				elseif Level == 1525 or Level <= 1574 then
					Mon = "Pistol Billionaire [Lv. 1525]"
					MonPos = CFrame.new(-315.38531494140625, 119.50130462646484, 6005.96630859375)
					LQuest = 2
					NQuest = "PiratePortQuest"
					NameMon = "Pistol Billionaire"
					CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				elseif Level == 1575 or Level <= 1599 then
					Mon = "Dragon Crew Warrior [Lv. 1575]"
					MonPos = CFrame.new(6414.8330078125, 121.43488311767578, -807.5617065429688)
					LQuest = 1
					NQuest = "AmazonQuest"
					NameMon = "Dragon Crew Warrior"
					CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				elseif Level == 1600 or Level <= 1624 then 
					Mon = "Dragon Crew Archer [Lv. 1600]"
					MonPos = CFrame.new(6622.6787109375, 378.4330749511719, 182.57872009277344)
					NQuest = "AmazonQuest"
					LQuest = 2
					NameMon = "Dragon Crew Archer"
					CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
				elseif Level == 1625 or Level <= 1649 then
					Mon = "Female Islander [Lv. 1625]"
					MonPos = CFrame.new(5719.08203125, 781.7914428710938, 871.026123046875)
					NQuest = "AmazonQuest2"
					LQuest = 1
					NameMon = "Female Islander"
					CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
				elseif Level == 1650 or Level <= 1699 then 
					Mon = "Giant Islander [Lv. 1650]"
					MonPos = CFrame.new(4937.7333984375, 604.96728515625, -237.5341796875)
					NQuest = "AmazonQuest2"
					LQuest = 2
					NameMon = "Giant Islander"
					CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
				elseif Level == 1700 or Level <= 1724 then
					Mon = "Marine Commodore [Lv. 1700]"
					MonPos = CFrame.new(2394.572998046875, 121.98365020751953, -7600.91943359375)
					LQuest = 1
					NQuest = "MarineTreeIsland"
					NameMon = "Marine Commodore"
					CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				elseif Level == 1725 or Level <= 1774 then
					Mon = "Marine Rear Admiral [Lv. 1725]"
					MonPos = CFrame.new(3637.744873046875, 160.55908203125, -7037.28857421875)
					NameMon = "Marine Rear Admiral"
					NQuest = "MarineTreeIsland"
					LQuest = 2
					CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
				elseif Level == 1775 or Level <= 1799 then
					Mon = "Fishman Raider [Lv. 1775]"
					MonPos = CFrame.new(-10352.6923828125, 344.1450500488281, -8169.39111328125)
					LQuest = 1
					NQuest = "DeepForestIsland3"
					NameMon = "Fishman Raider"
					CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
				elseif Level == 1800 or Level <= 1824 then
					Mon = "Fishman Captain [Lv. 1800]"
					MonPos = CFrame.new(-11087.44140625, 331.79766845703125, -8934.5576171875)
					LQuest = 2
					NQuest = "DeepForestIsland3"
					NameMon = "Fishman Captain"
					CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
				elseif Level == 1825 or Level <= 1849 then
					Mon = "Forest Pirate [Lv. 1825]"
					MonPos = CFrame.new(-13241.498046875, 428.2030944824219, -7748.095703125)
					LQuest = 1
					NQuest = "DeepForestIsland"
					NameMon = "Forest Pirate"
					CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				elseif Level == 1850 or Level <= 1899 then
					Mon = "Mythological Pirate [Lv. 1850]"
					MonPos = CFrame.new(-13427.259765625, 511.83453369140625, -6943.66162109375)
					LQuest = 2
					NQuest = "DeepForestIsland"
					NameMon = "Mythological Pirate"
					CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
				elseif Level == 1900 or Level <= 1924 then
					Mon = "Jungle Pirate [Lv. 1900]"
					MonPos = CFrame.new(-12113.16796875, 441.3117980957031, -10540.6298828125)
					LQuest = 1
					NQuest = "DeepForestIsland2"
					NameMon = "Jungle Pirate"
					CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				elseif Level == 1925 or Level <= 1974 then
					Mon = "Musketeer Pirate [Lv. 1925]"
					MonPos = CFrame.new(-13249.8271484375, 496.2460632324219, -9584.373046875)
					LQuest = 2
					NQuest = "DeepForestIsland2"
					NameMon = "Musketeer Pirate"
					CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				elseif Level == 1975 or Level <= 1999 then
					Mon = "Reborn Skeleton [Lv. 1975]"
					MonPos = CFrame.new(-8766.345703125, 174.2373809814453, 6169.01513671875)
					LQuest = 1
					NQuest = "HauntedQuest1"
					NameMon = "Reborn Skeleton"
					CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				elseif Level == 2000 or Level <= 2024 then
					Mon = "Living Zombie [Lv. 2000]"
					MonPos = CFrame.new(-9925.1884765625, 158.6781005859375, 6036.7314453125)
					LQuest = 2
					NQuest = "HauntedQuest1"
					NameMon = "Living Zombie"
					CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				elseif Level == 2025 or Level <= 2049 then
					Mon = "Demonic Soul [Lv. 2025]"
					MonPos = CFrame.new(-9542.6875, 272.1398010253906, 6249.53515625)
					LQuest = 1
					NQuest = "HauntedQuest2"
					NameMon = "Demonic Soul"
					CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
				elseif Level == 2050 or Level <= 2074 then
					Mon = "Posessed Mummy [Lv. 2050]"
					MonPos = CFrame.new(-9544.2744140625, 60.294342041015625, 6348.95849609375)
					LQuest = 2
					NQuest = "HauntedQuest2"
					NameMon = "Posessed Mummy"
					CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 2075 or Level <= 2099 then
					Mon = "Peanut Scout [Lv. 2075]"
					MonPos = CFrame.new(-2063.197021484375, 78.91095733642578, -10137.9287109375)
					LQuest = 1
					NQuest = "NutsIslandQuest"
					NameMon = "Peanut Scout"
					CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 2100 or Level <= 2124 then
					Mon = "Peanut President [Lv. 2100]"
					MonPos = CFrame.new(-2133.56396484375, 70.31375885009766, -10523.0908203125)
					LQuest = 2
					NQuest = "NutsIslandQuest"
					NameMon = "Peanut President"
					CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 2125 or Level <= 2149 then
					Mon = "Ice Cream Chef [Lv. 2125]"
					MonPos = CFrame.new(-893.8236083984375, 116.68982696533203, -10938.47265625)
					LQuest = 1
					NQuest = "IceCreamIslandQuest"
					NameMon = "Ice Cream Chef"
					CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 2150 or Level <= 2199 then
					Mon = "Ice Cream Commander [Lv. 2150]"
					MonPos = CFrame.new(-585.1178588867188, 203.74639892578125, -11267.0107421875)
					LQuest = 2
					NQuest = "IceCreamIslandQuest"
					NameMon = "Ice Cream Commander"
					CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				elseif Level == 2200 or Level <= 2224 then
					Mon = "Cookie Crafter [Lv. 2200]"
					MonPos = CFrame.new(-2286.31103515625, 91.31655883789062, -12041.6884765625)
					LQuest = 1
					NQuest = "CakeQuest1"
					NameMon = "Cookie Crafter"
					CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
				elseif Level == 2225 or Level <= 2249 then
					Mon = "Cake Guard [Lv. 2225]"
					MonPos = CFrame.new(-1630.3675537109375, 195.69100952148438, -12275.96875)
					LQuest = 2
					NQuest = "CakeQuest1"
					NameMon = "Cake Guard"
					CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
				elseif Level == 2250 or Level <= 2274 then
					Mon = "Baking Staff [Lv. 2250]"
					MonPos = CFrame.new(-1824.580810546875, 95.08509826660156, -12891.3232421875)
					LQuest = 1
					NQuest = "CakeQuest2"
					NameMon = "Baking Staff"
					CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
				elseif Level == 2275 or Level <= 2299 then
					Mon = "Head Baker [Lv. 2275]"
					MonPos = CFrame.new(-2068.284912109375, 68.5050048828125, -12950.775390625)
					LQuest = 2
					NQuest = "CakeQuest2"
					NameMon = "Head Baker"
					CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
				elseif Level == 2300 or Level <= 2324 then
					Mon = "Cocoa Warrior [Lv. 2300]"
					MonPos = CFrame.new(43.3896598815918, 56.341636657714844, -12324.78515625)
					LQuest = 1
					NQuest = "ChocQuest1"
					NameMon = "Cocoa Warrior"
					CFrameQuest = CFrame.new(231.88818359375, 24.769283294677734, -12202.1337890625)
				elseif Level == 2325 or Level <= 2349 then
					Mon = "Chocolate Bar Battler [Lv. 2325]"
					MonPos = CFrame.new(719.6046752929688, 69.9678955078125, -12597.25390625)
					LQuest = 2
					NQuest = "ChocQuest1"
					NameMon = "Chocolate Bar Battler"
					CFrameQuest = CFrame.new(231.88818359375, 24.769283294677734, -12202.1337890625)
			elseif Level == 2350 or Level <= 2374 then
					Mon = "Sweet Thief [Lv. 2350]"
					MonPos = CFrame.new(155.99618530273438, 54.82904815673828, -12580.7265625)
					LQuest = 1
					NQuest = "ChocQuest2"
					NameMon = "Sweet Thief"
					CFrameQuest = CFrame.new(151.1981201171875, 24.828855514526367, -12778.08984375)
			elseif Level >= 2375 then
					Mon = "Candy Rebel [Lv. 2375]"
					MonPos = CFrame.new(-7.535787105560303, 35.526527404785156, -12896.34375)
					LQuest = 2
					NQuest = "ChocQuest2"
					NameMon = "Candy Rebel"
					CFrameQuest = CFrame.new(151.1981201171875, 24.828855514526367, -12778.08984375)
				end
			end
		end

		function MaterialMon()
			if _G.Setting_table.SelectMaterial == "Radioactive Material" then
				MMon = "Factory Staff [Lv. 800]"
				MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
				SP = "Bar"
			elseif _G.Setting_table.SelectMaterial == "Mystic Droplet" then
				MMon = "Water Fighter [Lv. 1450]"
				MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
				SP = "ForgottenIsland"
			elseif _G.Setting_table.SelectMaterial == "Magma Ore" then
				if game.PlaceId == 2753915549 then
					MMon = "Military Spy [Lv. 325]"
					MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
					MMon = "Lava Pirate [Lv. 1200]"
					MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
					SP = "CircleIslandFire"
				end
			elseif _G.Setting_table.SelectMaterial == "Angel Wings" then
				MMon = "Royal Soldier [Lv. 550]"
				MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
				SP = "Sky2"
			elseif _G.Setting_table.SelectMaterial == "Leather" then
				if game.PlaceId == 2753915549 then
					MMon = "Pirate [Lv. 36]"
					MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Marine Captain [Lv. 900]"
					MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
					SP = "Greenb"
				elseif game.PlaceId == 7449423635 then
					MMon = "Jungle Pirate [Lv. 1900]"
					MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
					SP = "PineappleTown"
				end
			elseif _G.Setting_table.SelectMaterial == "Scrap Metal" then
				if game.PlaceId == 2753915549 then
					MMon = "Brute [Lv. 45]"
					MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Mercenary [Lv. 725]"
					MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
					MMon = "Pirate Millionaire [Lv. 1500]"
					MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
					SP = "Default"
				end
			elseif _G.Setting_table.SelectMaterial == "Demonic Wisp" then
				MMon = "Demonic Soul [Lv. 2025]"
				MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
				SP = "HauntedCastle"
			elseif _G.Setting_table.SelectMaterial == "Vampire Fang" then
				MMon = "Vampire [Lv. 975]"
				MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
				SP = "Graveyard"
			elseif _G.Setting_table.SelectMaterial == "Conjured Cocoa" then
				MMon = "Chocolate Bar Battler [Lv. 2325]"
				MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
				SP = "Chocolate"
			elseif _G.Setting_table.SelectMaterial == "Dragon Scale" then
				MMon = "Dragon Crew Warrior [Lv. 1575]"
				MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
				SP = "Hydra1"
			elseif _G.Setting_table.SelectMaterial == "Gunpowder" then
				MMon = "Pistol Billionaire [Lv. 1525]"
				MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
				SP = "Default"
			elseif _G.Setting_table.SelectMaterial == "Fish Tail" then
				MMon = "Fishman Captain [Lv. 1800]"
				MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
				SP = "PineappleTown"
			elseif _G.Setting_table.SelectMaterial == "Mini Tusk" then
				MMon = "Mythological Pirate [Lv. 1850]"
				MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
				SP = "BigMansion"
			end
		end

		local plr = game.Players.LocalPlayer

		local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
		local CbFw2 = CbFw[2]

		function GetCurrentBlade() 
			local p13 = CbFw2.activeController
			local ret = p13.blades[1]
			if not ret then return end
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
			return ret
		end

		function AttackNoCD() 
			local AC = CbFw2.activeController
			for i = 1, 1 do 
				local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
					plr.Character,
					{plr.Character.HumanoidRootPart},
					60
				)
				local cac = {}
				local hash = {}
				for k, v in pairs(bladehit) do
					if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
						table.insert(cac, v.Parent.HumanoidRootPart)
						hash[v.Parent] = true
					end
				end
				bladehit = cac
				if #bladehit > 0 then
					local u8 = debug.getupvalue(AC.attack, 5)
					local u9 = debug.getupvalue(AC.attack, 6)
					local u7 = debug.getupvalue(AC.attack, 4)
					local u10 = debug.getupvalue(AC.attack, 7)
					local u12 = (u8 * 798405 + u7 * 727595) % u9
					local u13 = u7 * 798405
					(function()
						u12 = (u12 * u9 + u13) % 1099511627776
						u8 = math.floor(u12 / u9)
						u7 = u12 - u8 * u9
					end)()
					u10 = u10 + 1
					debug.setupvalue(AC.attack, 5, u8)
					debug.setupvalue(AC.attack, 6, u9)
					debug.setupvalue(AC.attack, 4, u7)
					debug.setupvalue(AC.attack, 7, u10)
					pcall(function()
						for k, v in pairs(AC.animator.anims.basic) do
							v:Play()
						end                  
					end)
					if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
					end
				end
			end
		end

		function CameraShaker()
			task.spawn(function()
				local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
				while task.wait() do
					Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
				end
			end)
		end

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmSea2 or _G.Setting_table.AutoFarmSea1 or _G.Setting_table.AutoFactory or _G.Setting_table.AutoFullyRaid or _G.Setting_table.AutoSwordMas or _G.Setting_table.AutoFarmAllBoss or _G.Setting_table.AutoIndra or _G.Setting_table.AutoElectricClaw or _G.Setting_table.AutoCollectChest or _G.Setting_table.AutoFarmKen or _G.Setting_table.AutoSea3 or _G.Setting_table.AutoLawRaid or _G.Setting_table.AutoFarmBoss or _G.Setting_table.AutoGunMas or _G.Setting_table.AutoFruitMas or _G.Setting_table.AutoCakeMon or _G.Setting_table.AutoRengoku or _G.Setting_table.AutoDeathStep or _G.Setting_table.AutoEctoplasm or _G.Setting_table.AutoFarmMaterial or _G.Setting_table.AutoDoughKingV2 or _G.Setting_table.AutoFarm or _G.Setting_table.AutoNextIsland or _G.Setting_table.AutoSaber or _G.Setting_table.AutoSea2 or _G.Setting_table.AutoBartilo or _G.Setting_table.AutoFarmBone or _G.Setting_table.AutoDoughKingV1 or _G.Setting_table.AutoElite or _G.Setting_table.AutoSharkman then
						for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
							v:Destroy()
						end
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

		spawn(function()
			game:GetService("RunService").RenderStepped:Connect(function()
				game.Players.LocalPlayer.Character.Stun.Value = 0
				game.Players.LocalPlayer.Character.Humanoid.Sit = false
				game.Players.LocalPlayer.Character.Busy.Value = false        
			end)
		end)

		local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
		local CombatFramework = debug.getupvalues(Module)[2]
		local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

		spawn(function()
			while task.wait() do
				pcall(function()
					CameraShakerR:Stop()
					CombatFramework.activeController.attacking = false
					CombatFramework.activeController.timeToNextAttack = 0
					CombatFramework.activeController.increment = 3
					CombatFramework.activeController.hitboxMagnitude = 280
					CombatFramework.activeController.blocking = false
					CombatFramework.activeController.timeToNextBlock = 0
					CombatFramework.activeController.focusStart = 0
					CombatFramework.activeController.humanoid.AutoRotate = true
				end)
			end
		end)

		spawn(function()
			while true do
				pcall(function()
					task.wait()
					if _G.Setting_table.SuperFastAttack then
						repeat task.wait(_G.Setting_table.AttackDelay / 10)
							AttackNoCD() 
						until not _G.Setting_table.SuperFastAttack
					else
						repeat task.wait(_G.Setting_table.AttackDelay / 10)
					--	AttackNoCD()
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(999,999,0,true,nil,0)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(999,999,0,false,nil,0)
						until _G.Setting_table.SuperFastAttack == true
					end
				end)
			end
		end)
		


		function EquipTool(Tool)
			Select = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
			wait(.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Select)
		end

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm Quest" then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							if _G.Setting_table.AutoElite then
								if game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") then
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									Tween(CFrame.new(-5419.79296875, 313.7849426269531, -2823.969482421875))
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5419.79296875, 313.7849426269531, -2823.969482421875)).Magnitude <= 10 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
									end
								else
									CheckQuest()
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									Tween(CFrameQuest)
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
									end
								end
							end
							if _G.Setting_table.AutoFarm then
								if not _G.Setting_table.AutoElite then
									CheckQuest()
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									Tween(CFrameQuest)
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
									end
								end
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if _G.Setting_table.AutoElite and game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or _G.Setting_table.AutoElite and game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or _G.Setting_table.AutoElite and game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") then
									for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
										if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
											if v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
												until not _G.Setting_table.AutoElite or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								end
							else
								CheckQuest()
								if game.Workspace.Enemies:FindFirstChild(Mon) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Mon then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													FarmPos = v.HumanoidRootPart.CFrame
													MonFarm = v.Name
												until not _G.Setting_table.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											end
										end
									end
								else
									Tween(MonPos)
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm Quest" then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = FarmPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmSea1 then
						if game.Players.LocalPlayer.Data.Level.Value <= 699 then
							CheckQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								Tween(CFrameQuest)
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild(Mon) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Mon then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													FarmSea1Pos = v.HumanoidRootPart.CFrame
													MonSea1Farm = v.Name
												until not _G.Setting_table.AutoFarmSea1 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											end
										end
									end
								else
									Tween(MonPos)
								end
							end
						elseif game.Players.LocalPlayer.Data.Level.Value >= 700 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false  then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
									wait(.5)
									EquipTool("Key")
									Tween(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
									game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
								if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
											if v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
												until not _G.Setting_table.AutoFarmSea1 or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									end	
								else
									for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
											if v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
												until not _G.Setting_table.AutoFarmSea1 or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									end	
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == true then
								if game.PlaceId == 2753915549 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							end	
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmSea2 then
						local MyData = game.Players.LocalPlayer.Data
						local MyLv = MyData.Level.Value
						if MyLv >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").DidPlates == false then
							AutoAllFruit = true
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == false then
								if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								end
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
									Tween(CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031))
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031).Position).Magnitude <= 20 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
									if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat task.wait()
														EquipTool(_G.SWeapon)
														Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid.WalkSpeed = 0
														v.Head.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(50,50,50)
														_QuestPos = v.HumanoidRootPart.CFrame
														_QuestMon = v.Name
													until not _G.Setting_table.AutoFarmSea2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												end
											end
										end
									else
										Tween(CFrame.new(861.4966430664062, 121.5821762084961, 1255.2193603515625))
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == false then
							--	print("Killing Spring User")
								if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Jeremy [Lv. 850] [Boss]" then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											until not _G.Setting_table.AutoBartilo
										end
									end
								else
									for x,y in pairs(game.ReplicatedStorage:GetChildren()) do
										if y.Name == "Jeremy [Lv. 850] [Boss]" then
											repeat task.wait()
												Tween(y.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											until not _G.Setting_table.AutoBartilo
										end
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").DidPlates == false then
								for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.Dialogue.Option1.MouseButton1Click)) do
									v:Fire()
								end
								local Plates = game:GetService("Workspace").Map.Dressrosa.BartiloPlates
								if Plates:FindFirstChild("Plate1").BrickColor ~= BrickColor.new("Olivine") then
									Tween(Plates:FindFirstChild("Plate1").CFrame)
								elseif Plates:FindFirstChild("Plate2").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate2").CFrame)
								elseif Plates:FindFirstChild("Plate3").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate3").CFrame)
								elseif Plates:FindFirstChild("Plate4").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate4").CFrame)
								elseif Plates:FindFirstChild("Plate5").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate5").CFrame)
								elseif Plates:FindFirstChild("Plate6").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate6").CFrame)
								elseif Plates:FindFirstChild("Plate7").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate7").CFrame)
								elseif Plates:FindFirstChild("Plate8").BrickColor ~= BrickColor.new("Olivine") then
									TP(Plates:FindFirstChild("Plate8").CFrame)
								end 
							end
						elseif MyLv >= 1100 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1") == false and MyData.Fragments.Value <= 1499 then
							AutoAllFruit = false
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
								if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
									if not game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
										if game.PlaceId == 4442272183 then
											fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
										elseif game.PlaceId == 7449423635 then
											fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
										end
									end
								end
							else
								print('Buying')
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('RaidsNpc','Check')
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select","Flame")
							end
							if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
								for i,v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
									if v.Name == ("Island 5") then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
											Tween(v.CFrame)
										end
									elseif v.Name == ("Island 4") then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
											Tween(v.CFrame)
										end
									elseif v.Name == ("Island 3") then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
											Tween(v.CFrame)
										end
									elseif v.Name == ("Island 2") then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
											Tween(v.CFrame)
										end
									end
								end
							end
						else
							CheckQuest()
							AutoAllFruit = true
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								Tween(CFrameQuest)
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild(Mon) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Mon then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													FarmSea1Pos = v.HumanoidRootPart.CFrame
													MonSea1Farm = v.Name
												until not _G.Setting_table.AutoFarmSea2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											end
										end
									end
								else
									Tween(MonPos)
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoFarmSea2 then
					pcall(function()
						local MyData = game.Players.LocalPlayer.Data
						local MyLv = MyData.Level.Value
						if MyLv >= 1100 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1") == false and MyData.Fragments.Value <= 1499 then
							for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									pcall(function()
										repeat task.wait()
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											v.Humanoid.Health = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(100,100,100)
											v.HumanoidRootPart.Transparency = 0.8
										until not _G.Setting_table.Killaura or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") == 1 or MyData.Fragments.Value >= 1500
									end)
								end
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoFarmSea2 then
					pcall(function()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoFarmSea1 or _G.Setting_table.AutoFarmSea2 then
					pcall(function()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin" , "Buy")
						if AutoAllFruit then
							for i,v in pairs(game.Workspace:GetChildren()) do
								if string.find(v.Name,"Fruit") then
									if v:IsA("Tool") then
										v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
										wait(2)
									end
								end
							end

							for i,v in pairs(Fruit) do
							for x,y in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if string.find(y.Name,"Fruit") then
									repeat task.wait()
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v,game.Players.LocalPlayer.Backpack[y.Name])
									until not _G.Setting_table.AutoFarmSea1 or not _G.Setting_table.AutoFarmSea2
								end
							end
							end

							for i,v in pairs(Fruit) do
							for x,y in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if string.find(y.Name,"Fruit") then
									repeat task.wait()
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v,game.Players.LocalPlayer.Backpack[y.Name])
									until not _G.Setting_table.AutoFarmSea1 or not _G.Setting_table.AutoFarmSea2
								end
							end
							end
						else
							for i,v in pairs(CheapFruit) do
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit" , v)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarmSea1 or _G.Setting_table.Bring and _G.Setting_table.AutoFarmSea2 then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == _QuestMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = _QuestPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarmSea1 or _G.Setting_table.Bring and _G.Setting_table.AutoFarmSea2 then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MonSea1Farm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = FarmSea1Pos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm No Quest" then
						CheckQuest()
						if game.Workspace.Enemies:FindFirstChild(Mon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == Mon then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											FarmPos = v.HumanoidRootPart.CFrame
											MonFarm = v.Name
										until not _G.Setting_table.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(MonPos)
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm No Quest" then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = FarmPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm Nearest" then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 1500 then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										FarmPos = v.HumanoidRootPart.CFrame
										MonFarm = v.Name
									until not _G.Setting_table.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarm and _G.Setting_table.Mode == "Auto Farm Nearest" then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = FarmPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoBartilo then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == false then
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								Tween(CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031))
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031).Position).Magnitude <= 20 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Swan Pirate [Lv. 775]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													_QuestPos = v.HumanoidRootPart.CFrame
													_QuestMon = v.Name
												until not _G.Setting_table.AutoFarmSea2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											end
										end
									end
								else
									Tween(CFrame.new(861.4966430664062, 121.5821762084961, 1255.2193603515625))
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == false then
							print("Killing Spring User")
							if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Jeremy [Lv. 850] [Boss]" then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										until not _G.Setting_table.AutoBartilo
									end
								end
								for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.Dialogue.Option1.MouseButton1Click)) do
									v:Fire()
								end
							else
								for x,y in pairs(game.ReplicatedStorage:GetChildren()) do
									if y.Name == "Jeremy [Lv. 850] [Boss]" then
										repeat task.wait()
											Tween(y.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										until not _G.Setting_table.AutoBartilo
									end
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").DidPlates == false then
							local Plates = game:GetService("Workspace").Map.Dressrosa.BartiloPlates
							if Plates:FindFirstChild("Plate1").BrickColor ~= BrickColor.new("Olivine") then
								Tween(Plates:FindFirstChild("Plate1").CFrame)
							elseif Plates:FindFirstChild("Plate2").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate2").CFrame)
							elseif Plates:FindFirstChild("Plate3").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate3").CFrame)
							elseif Plates:FindFirstChild("Plate4").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate4").CFrame)
							elseif Plates:FindFirstChild("Plate5").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate5").CFrame)
							elseif Plates:FindFirstChild("Plate6").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate6").CFrame)
							elseif Plates:FindFirstChild("Plate7").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate7").CFrame)
							elseif Plates:FindFirstChild("Plate8").BrickColor ~= BrickColor.new("Olivine") then
								TP(Plates:FindFirstChild("Plate8").CFrame)
							end 
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoEctoplasm then
						if game.Workspace.Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game.Workspace.Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game.Workspace.Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											EctoPos = v.HumanoidRootPart.CFrame
											EctoMon = v.Name
										until not _G.Setting_table.AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
									end
								end 
							end
						else
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(1037.80127, 125.092171, 32911.6016))
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoEctoplasm then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == EctoMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = EctoPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFactory then
						if game.Workspace.Enemies:FindFirstChild("Core") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Core" then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame)
									until not _G.Setting_table.AutoFactory
								end
							end
						else
							for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
								if v.Name == "Core" then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame)
									until not _G.Setting_table.AutoFactory
								end
							end
						end
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoRaceV2 then
						local Back = game.Players.LocalPlayer.Backpack
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						if Back:FindFirstChild("Flower 2") then
							if Back:FindFirstChild("Flower 1") then
								Tween(CFrame.new(-5497.06152, 47.5923004, -795.237061))
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Zombie [Lv. 950]" then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))			
										until Back:FindFirstChild("Flower 3")
									end
								end
							else
								Tween(game.Workspace["Flower1"].CFrame)
							end
						else
							Tween(game.Workspace["Flower2"].CFrame)
						end
						if Back:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and Back:FindFirstChild("Flower 3") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
						end
						for i,v in pairs(game.Workspace:GetChildren()) do
							if v.Name == "Flower1" or v.Name == "Flower2" then
								v.Size = Vector3.new(20,20,20)
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSharkman then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Water key") or game.Players.LocalPlayer.Character:FindFirstChild("Water key") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						else
							for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
								if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(14)
											v.HumanoidRootPart.CanCollide = false
											v.Head.CanCollide = false
											if v.Humanoid:FindFirstChild("Animator") then
												v.Humanoid.Animator:Destroy()
											end
											sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
										until not _G.Setting_table.AutoSharkman or not v.Parent or v.Humanoid.Health <= 0
									end
								else
									if _G.Setting_table.AutoSharkmanHop then
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") then
											wait(.1)
										else
											if not v:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
												wait(2.5)
												Teleport()
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoDeathStep then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
							Tween(game.Workspace.Map.IceCastle.Hall.LibraryDoor.Keyhole.Detect.CFrame)
							EquipTool("Library Key")
							game.Workspace.Map.IceCastle.Hall.LibraryDoor.Keyhole.Detect.Size = Vector3.new(20,20,20)
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						else
							for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
								if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(14)
											v.HumanoidRootPart.CanCollide = false
											v.Head.CanCollide = false
											if v.Humanoid:FindFirstChild("Animator") then
												v.Humanoid.Animator:Destroy()
											end
											sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
										until not _G.Setting_table.AutoDeathStep or not v.Parent or v.Humanoid.Health <= 0
									end
								else
									if _G.Setting_table.AutoDeathStepHop then
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key")then
											wait(.1)
										else
											if not v:FindFirstChild("Awakend Ice Admiral [Lv. 1400] [Boss]") then
												wait(2.5)
												Teleport()
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function ()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoElectricClaw then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12548.0087890625, 337.16827392578125, -7500.3154296875)).Magnitude >= 10 then
							Tween(CFrame.new(-12548.0087890625, 337.16827392578125, -7500.3154296875))
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoDragonTalon then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSea2 then
						while task.wait() do
							if _G.Setting_table.AutoSea2 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Key"])
										Tween(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
										game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
									end
								end
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
											if v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
												until not _G.Setting_table.AutoSea2
											end
										end
									end
									for x,y in pairs(game.ReplicatedStorage:GetChildren()) do
										if y.Name == "Ice Admiral [Lv. 700] [Boss]" then
											if y:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													EquipTool(_G.SWeapon)
													Tween(y.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
												until not _G.Setting_table.AutoSea2
											end
										end
									end
								end
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == true then
									if game.PlaceId == 2753915549 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoSea3 then
					pcall(function()
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress").KilledIndraBoss == false then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-26697.98828125, 7.061740398406982, 425.6222839355469)).Magnitude >= 20000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
							end
							wait(.5)
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "rip_indra [Lv. 1500] [Boss]" then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.Humanoid:ChangeState(14)
										v.HumanoidRootPart.CanCollide = false
										v.Head.CanCollide = false
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									until not _G.Setting_table.AutoSea3 or not v.Parent
								end
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSaber then
						if game.Players.LocalPlayer.Data.Level.Value >= 200 then
							local QPlates = game:GetService("Workspace").Map.Jungle.QuestPlates
							if QPlates["Plate1"].Button.BrickColor ~= BrickColor.new("Camo") then
								Tween(QPlates["Plate1"].Button.CFrame)
							elseif QPlates["Plate2"].Button.BrickColor ~= BrickColor.new("Camo") then
								Tween(QPlates["Plate2"].Button.CFrame)
							elseif QPlates["Plate3"].Button.BrickColor ~= BrickColor.new("Camo") then
								Tween(QPlates["Plate3"].Button.CFrame)
							elseif QPlates["Plate4"].Button.BrickColor ~= BrickColor.new("Camo") then
								Tween(QPlates["Plate4"].Button.CFrame)
							elseif QPlates["Plate5"].Button.BrickColor ~= BrickColor.new("Camo") then
								Tween(QPlates["Plate5"].Button.CFrame)
							end
							if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide == false and game:GetService("Workspace").Map.Desert.Burn.Part.CanCollide == true then
								if  game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
									EquipTool("Torch")
									game:GetService("Workspace").Map.Desert.Burn.Fire.Size = Vector3.new(10,10,10)
									game:GetService("Workspace").Map.Desert.Burn.Fire.CanCollide = false
									Tween(CFrame.new(1113.6805419921875, 5.046795845031738, 4349.96484375))
								else
									Tween(CFrame.new(-1610.025634765625, 12.177388191223145, 162.5987091064453))

								end
							end
							if game:GetService("Workspace").Map.Desert.Burn.Part.CanCollide == false and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
									EquipTool("Cup")
									game:GetService("Workspace").Map.Ice.ParticleDrop.Water.Size = Vector3.new(40,40,40)
									game:GetService("Workspace").Map.Ice.ParticleDrop.Water.Transparency = 0
									Tween(CFrame.new(1397.471435546875, 37.47333908081055, -1321.564208984375))
								else
									Tween(CFrame.new(1113.9412841796875, 7.207527160644531, 4365.94921875))
								end
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedCup == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							end 
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").TalkedSon == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == false then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v.Name == "Mob Leader [Lv. 120] [Boss]" then
										if v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(y.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											until not _G.Setting_table.AutoSaber
										end
									end
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == false and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").KilledMob == true then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
									EquipTool(game.Players.LocalPlayer.Backpack["Relic"])
									game:GetService("Workspace").Map.Jungle.Final.Invis.Size = Vector3.new(20,20,20)
									game:GetService("Workspace").Map.Jungle.Final.Invis.CanCollide = false
									Tween(CFrame.new(-1407.0384521484375, 29.977327346801758, 4.923530578613281))
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
									wait()
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
								end
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").KilledShanks == false then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v.Name == "Saber Expert [Lv. 200] [Boss]" then
										if y:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											until not _G.Setting_table.AutoSaber
										end
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoElite then
						if not _G.Setting_table.AutoFarm then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") then
								wait(.1)
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								repeat task.wait()
									Tween(CFrame.new(-5419.79296875, 313.7849426269531, -2823.969482421875))
								until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5419.79296875, 313.7849426269531, -2823.969482421875)).Magnitude <= 10
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5419.79296875, 313.7849426269531, -2823.969482421875)).Magnitude <= 10 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
										if v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											until not _G.Setting_table.AutoElite or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmMaterial and _G.Setting_table.SelectMaterial then
						MaterialMon()
						if game.Workspace.Enemies:FindFirstChild(MMon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == MMon then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											MatMon = v.Name
											MatPos = v.HumanoidRootPart.CFrame
										until not _G.Setting_table.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(MPos)
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarmMaterial then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MatMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = MatPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoFarmBone then
					pcall(function()
						if game.Workspace.Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game.Workspace.Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game.Workspace.Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name =="Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											BoneMob = v.Name
											BonePos = v.HumanoidRootPart.CFrame
										until not _G.Setting_table.AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(CFrame.new(-9504.453125, 307.13983154296875, 6156.94189453125))
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFarmBone then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == BoneMob and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = BonePos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								v:FindFirstChilldOfClass("Part").Transparency = 0.5
								v:FindFirstChilldOfClass("MeshPart").Transparency = 0.5
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)
		
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoIndra then
						if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
							for i2,v2 in pairs(game.ReplicatedStorage:GetChildren()) do
								if v2.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
									if v2:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											while task.wait() do
												EquipTool(_G.SWeapon)
												Tween(v2.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v2.Humanoid.WalkSpeed = 0
												v2.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v2.Humanoid:ChangeState(14)
												v2.HumanoidRootPart.CanCollide = false
												v2.Head.CanCollide = false
												if v2.Humanoid:FindFirstChild("Animator") then
													v2.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											end
										until not _G.Setting_table.AutoIndra or not v2.Parent or v2.Humanoid.Health <= 0
									end
								end
							end
							for i2,v2 in pairs(game.Workspace.Enemies:GetChildren()) do
								if v2.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
									if v2:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											while task.wait() do
												EquipTool(_G.SWeapon)
												Tween(v2.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v2.Humanoid.WalkSpeed = 0
												v2.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v2.Humanoid:ChangeState(14)
												v2.HumanoidRootPart.CanCollide = false
												v2.Head.CanCollide = false
												if v2.Humanoid:FindFirstChild("Animator") then
													v2.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											end
										until not _G.Setting_table.AutoIndra or not v2.Parent or v2.Humanoid.Health <= 0
									end
								end
							end
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
								EquipTool("God's Chalice")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
								repeat Tween(CFrame.new(-5420,1084,-2666)) wait() until not _G.Setting_table.AutoIndra or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5420,1084,-2666)).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
								repeat Tween(CFrame.new(-5414,309,-2212)) wait() until not _G.Setting_table.AutoIndra or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5414,309,-2212)).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
								repeat Tween(CFrame.new(-4971,331,-3720)) wait() until not _G.Setting_table.AutoIndra or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4971,331,-3720)).Magnitude <= 10
								wait(1)
								repeat
									Tween(CFrame.new(-5563.55, 310.191, -2662.56))
									wait()
								until not _G.Setting_table.AutoIndra or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")			
							else
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
										if v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											until not _G.Setting_table.AutoIndra or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								end
							end
						end
					end
				end) 
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoMusketeerHat then
					pcall(function()
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1) == 1 then
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Forest Pirates") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Forest Pirate [Lv. 1825]" then
											repeat task.wait()
												while task.wait() do
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													ObsPos = v.HumanoidRootPart.CFrame
													ObsMon = v.Name
												end
											until not _G.Setting_table.AutoMusketeerHat or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								else
									Tween(CFrame.new(-13048.8173828125, 332.3781433105469, -7611.82568359375))
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1) == 2 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 1 then
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Captain Elephant") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										repeat task.wait()
											while task.wait() do
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											end
										until not _G.Setting_table.AutoMusketeerHat or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1) == 2 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
							Tween(CFrame.new(-12515.236328125, 337.2856750488281, -9873.78125))
						end
					end)
				end
			end
		end)
		
		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoMusketeerHat  then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == ObsMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = ObsPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoCakeMon then
						if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											EquipTool(_G.SWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											CakeMon = v.Name
											CakePos = v.HumanoidRootPart.CFrame
										until not _G.Setting_table.AutoCakeMon or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
						end
					else
						Tween(nil)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoCakeMon then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == CakeMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4000 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = CakePos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoDoughKingV1 then
						if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
								if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											while task.wait() do
												EquipTool(_G.SWeapon)
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											end
										until not _G.Setting_table.AutoDoughKingV1 or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]")then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat task.wait()
												--while task.wait() do
													EquipTool(_G.SWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													Dough1Mon = v.Name
													Dough1Pos = v.HumanoidRootPart.CFrame
												--end
											until not _G.Setting_table.AutoDoughKingV1 or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								end
							else
								Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoDoughKingV1 then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Dough1Mon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = Dough1Pos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoDoughKingV2 then
						if not game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
								if v.Name == "Conjured Cocoa" then
									if v.Count <= 9 then
										if game.Workspace.Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game.Workspace.Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
											for i2,v2 in pairs(game.Workspace.Enemies:GetChildren()) do
												if v2.Name == "Chocolate Bar Battler [Lv. 2325]" or v2.Name == "Cocoa Warrior [Lv. 2300]" then
													if v2:FindFirstChild("HumanoidRootPart") then
														repeat task.wait()
															EquipTool(_G.SWeapon)
															Tween(v2.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
															v2.HumanoidRootPart.CanCollide = false
															v2.Humanoid.WalkSpeed = 0
															v2.HumanoidRootPart.Size = Vector3.new(50,50,50)
															v2.Head.CanCollide = false
															Dough2Mon = v2.Name
															Dough2Pos = v2.HumanoidRootPart.CFrame
														until not _G.Setting_table.AutoDoughKingV2 or not v2.Parent or v2.Humanoid.Health <= 0
													end
												end
											end
										else
											Tween(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
										end
									else
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
											if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
												for i3,v3 in pairs(game.Workspace.Enemies:GetChildren()) do
													if v3.Name == "Cookie Crafter [Lv. 2200]" or v3.Name == "Cake Guard [Lv. 2225]" or v3.Name == "Baking Staff [Lv. 2250]" or v5.Name == "Head Baker [Lv. 2275]" then
														if v3:FindFirstChild("HumanoidRootPart") then
															repeat task.wait()
																while task.wait() do
																	EquipTool(_G.SWeapon)
																	Tween(v3.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
																	v3.HumanoidRootPart.CanCollide = false
																	v3.Humanoid.WalkSpeed = 0
																	v3.HumanoidRootPart.Size = Vector3.new(50,50,50)
																	v3.Head.CanCollide = false
																	Dough2Mon = v3.Name
																	Dough2Pos = v3.HumanoidRootPart.CFrame
																end
															until not _G.Setting_table.AutoDoughKingV2 or not v3.Parent or v3.Humanoid.Health <= 0
														end
													end
												end
											else
												Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
											end		
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
											for i4,v4 in pairs(game.ReplicatedStorage:GetChildren()) do
												if v4.Name == "Diablo [Lv. 1750]" or v4.Name == "Urban [Lv. 1750]" or v4.Name == "Deandre [Lv. 1750]" then
													if v4:FindFirstChild("HumanoidRootPart") then
														repeat task.wait()
															while task.wait() do
																EquipTool(_G.SWeapon)
																Tween(v4.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
																v4.Humanoid.WalkSpeed = 0
																v4.HumanoidRootPart.Size = Vector3.new(50,50,50)
																v4.Humanoid:ChangeState(14)
																v4.HumanoidRootPart.CanCollide = false
																v4.Head.CanCollide = false
																if v4.Humanoid:FindFirstChild("Animator") then
																	v4.Humanoid.Animator:Destroy()
																end
																sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
															end
														until not _G.Setting_table.AutoDoughKingV2 or not v4.Parent or v4.Humanoid.Health <= 0
													end
												end
											end
										end
										if not game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or not game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or not game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") then
											if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
												for i5,v5 in pairs(game.Workspace.Enemies:GetChildren()) do
													if v5.Name == "Cookie Crafter [Lv. 2200]" or v5.Name == "Cake Guard [Lv. 2225]" or v5.Name == "Baking Staff [Lv. 2250]" or v5.Name == "Head Baker [Lv. 2275]" then
														if v5:FindFirstChild("HumanoidRootPart") then
															repeat task.wait()
																while task.wait() do
																	EquipTool(_G.SWeapon)
																	Tween(v5.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
																	v5.HumanoidRootPart.CanCollide = false
																	v5.Humanoid.WalkSpeed = 0
																	v5.HumanoidRootPart.Size = Vector3.new(50,50,50)
																	v5.Head.CanCollide = false
																	Dough2Mon = v5.Name
																	Dough2Pos = v5.HumanoidRootPart.CFrame
																end
															until not _G.Setting_table.AutoDoughKingV2 or not v5.Parent or v5.Humanoid.Health <= 0
														end
													end
												end
											else
												Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
											end
										end
									end
								end
							end
						else
							for i6,v6 in pairs(game.ReplicatedStorage:GetChildren()) do
								if v6.Name == "Dough King [Lv. 2300] [Raid Boss]" then
									if v6:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											while task.wait() do
												EquipTool(_G.SWeapon)
												Tween(v6.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v6.Humanoid.WalkSpeed = 0
												v6.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v6.Humanoid:ChangeState(14)
												v6.HumanoidRootPart.CanCollide = false
												v6.Head.CanCollide = false
												if v6.Humanoid:FindFirstChild("Animator") then
													v6.Humanoid.Animator:Destroy()
												end
												sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
											end
										until not _G.Setting_table.AutoDoughKingV2 or not v6.Parent or v6.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoDoughKingV2 then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == CocoMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = CocoPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoDoughKingV2 then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Dough2Mon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = Dough2Pos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoRengoku then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
							if game.Workspace.Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") or game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Arctic Warrior [Lv. 1350]" or v.Name == "Snow Lurker [Lv. 1375]" then
										if v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												EquipTool(_G.SWeapon)
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												RenMon = v.Name
												RenPos = v.HumanoidRootPart.CFrame
											until not _G.Setting_table.AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								end
							else
								Tween(CFrame.new(5733.30615234375, 28.366647720336914, -6400.83837890625))
							end
						else
							Tween(CFrame.new(6571.9853515625, 297.16973876953125, -6965.3515625))
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoRengoku then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == RenMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = RenPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)
		--[[
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSwordMas then
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Tool") then
								if v.ToolTip == "Sword" then
									if v.Level.Value >= 600 then
										CharMaxLevel = t
				SaveSetting()rue
										print(CharMaxLevel)
									else
										CharMaxLevel = false
										print(CharMaxLevel)
										CharLvValue = t
				SaveSetting()onumber(v.Level.Value)
										print(CharLvValue)
									end
								end
							end
						end
						for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") then
								if v.ToolTip == "Sword" then
									if v.Level.Value >= 600 then
										BackMaxLevel = t
				SaveSetting()rue
										print(BackMaxLevel)
									else
										EquipSword = v.Name
										BackMaxLevel = false
										print(BackMaxLevel)
										LevelNumber =  tonumber(v.Level.Value)                                     
										print(LevelNumber)
									end
								end
							end
						end
						if BackMaxLevel or CharMaxLevel then
							for i,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
								if v.Type == "Sword" then
									repeat wait(.5)
										game.ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadItem",v.Name)
									until BackMaxLevel == false or CharMaxLevel == false
								end
							end
						end
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoSwordMas then
					pcall(function()
						if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											EquipTool(EquipSword)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											SwordName = v.Name
											SwordPos = v.HumanoidRootPart.CFrame
										until not _G.Setting_table.AutoSwordMas or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
						end
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoSwordMas then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == SwordName and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = SwordPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)
		]]
		--[[
		spawn(function()
			while task.wait() do
				pcall(function()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v:FindFirstChild("RemoteFunctionShoot") then
								SelectGun = v.Name
							end
						end
					end
				end)
			end
		end)]]

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoGunMas then
						CheckQuest()
						if game.Workspace.Enemies:FindFirstChild(Mon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == Mon then
									--if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
										for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											pcall(function()
												if v2:IsA("Tool") then
													if tostring(v2.ToolTip) == "Gun" then
														SelectGun = v2.Name
													end
												end		
											end)
										end
										repeat wait(.2)
											while task.wait() do
												local MinHealth = 30
												local health = v.Humanoid.Health
												local maxhealth = v.Humanoid.MaxHealth
												local percent = (health / maxhealth) * 100
												if percent <= MinHealth then
													EquipTool(SelectGun)
												elseif percent > MinHealth and v.Humanoid.Health > 0 then
													EquipTool(_G.SWeapon)
												end
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												GunMon = v.Name
												GunPos = v.HumanoidRootPart.CFrame
											end
										until not _G.Setting_table.AutoGunMas or v.Humanoid.Health <= 0 or not v.Parent
									--end
								end
							end
						else
							Tween(MonPos)
						end
					end
				end)
			end
		end)



		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoGunMas then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == GunMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = GunPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFruitMas then
						if game.Workspace.Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game.Workspace.Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game.Workspace.Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name =="Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Setting_table.KillAt/100 then
												EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
												UseSkill = true
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												FruitMon = v.Name
												FruitPos = v.HumanoidRootPart.CFrame
											else
												UseSkill = false
												EquipTool(_G.SWeapon)
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												FruitMon = v.Name
												FruitPos = v.HumanoidRootPart.CFrame
											end
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										until not _G.Setting_table.AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(CFrame.new(-9504.453125, 307.13983154296875, 6156.94189453125))
						end
					else
						UseSkill = false
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.Bring and _G.Setting_table.AutoFruitMas then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == FruitMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = FruitPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFruitMas then
						local On = {
							[1] = FruitPos.Position
						}
						game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(On))
					else
						local Off = {
							[1] = nil
						}
						game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(Off)) 
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if UseSkill then
						if _G.Setting_table.SkillZ then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
						end
						if _G.Setting_table.SkillX then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						end
						if _G.Setting_table.SkillC then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
						end
						if _G.Setting_table.SkillV then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmBoss and _G.Setting_table.SelectBoss then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if v.Name == _G.Setting_table.SelectBoss then
								if v:FindFirstChild("HumanoidRootPart") then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.Humanoid:ChangeState(14)
										v.HumanoidRootPart.CanCollide = false
										v.Head.CanCollide = false
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									until not _G.Setting_table.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFarmAllBoss then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if string.find(v.Name,"Boss") and v.Name ~= "Longma [Lv. 2000] [Boss]" and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "rip_indra [Lv. 1500] [Boss]" then
								if v:FindFirstChild("HumanoidRootPart") then
									repeat task.wait()
										EquipTool(_G.SWeapon)
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.Humanoid:ChangeState(14)
										v.HumanoidRootPart.CanCollide = false
										v.Head.CanCollide = false
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									until not _G.Setting_table.AutoFarmAllBoss or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function ()
			while task.wait() do
				pcall(function()
					CheckQuest()
					if _G.Setting_table.AutoFarmKen then	
						if game.Players.LocalPlayer.VisionRadius.Value <= 2999 then
							if game.Workspace.Enemies:FindFirstChild(Mon) then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == Mon then
										repeat wait()
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
										until not _G.Setting_table.AutoFarmKen
									end
								end
							else
								Tween(MonPos)
							end
						end
						if _G.Setting_table.AutoFarmKen and _G.Setting_table.AutoFarmKenHop then
							if game.Players.LocalPlayer.Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
								game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoSetSpawn then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoBuso then
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoKen then
						game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.Melee then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
					end
					if _G.Setting_table.Def then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
					end
					if _G.Setting_table.Sword then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
					end
					if _G.Setting_table.Gun then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
					end
					if _G.Setting_table.BF then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.FakeStats and _G.Setting_table.LevelVal then
					pcall(function()
						game.Players.LocalPlayer.Data.Level.Value = _G.Setting_table.LevelVal
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.FakeStats and _G.Setting_table.BeliVal then
					pcall(function()
						game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Text = t
				SaveSetting()ostring("$".._G.Setting_table.BeliVal)
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.LockStats and _G.Setting_table.BeliValue then
				pcall(function()
						if game.Players.LocalPlayer.Data.Beli.Value >= _G.Setting_table.BeliValue then
							game.Players.LocalPlayer:Kick("Lock Beli Kick")
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.LockStats and _G.Setting_table.FragmentValue then
					pcall(function()
						if game.Players.LocalPlayer.Data.Beli.Value >= _G.Setting_table.FragmentValue then
							game.Players.LocalPlayer:Kick("Lock Fragments Kick")
						end
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.Setting_table.LockStats and _G.Setting_table.LevelValue then
					pcall(function()
						if game.Players.LocalPlayer.Data.Level.Value >= _G.Setting_table.LevelValue then
							game.Players.LocalPlayer:Kick("Lock Level Kick")
						end
					end)
				end
			end

		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.StoreFruit then
					pcall(function()
						for i,v in pairs(Fruit) do
						for x,y in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if string.find(y.Name,"Fruit") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v,game.Players.LocalPlayer.Backpack[y.Name])
							end
						end
						end
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.BuyChip then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.Setting_table.DunType)
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.Killaura then
						for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat task.wait()
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										v.Humanoid.Health = 0
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(100,100,100)
										v.HumanoidRootPart.Transparency = 0.8
									until not _G.Setting_table.Killaura or not v.Parent or v.Humanoid.Health <= 0
								end)
							end
						end
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoRaid then
						if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
							if not game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
								if game.PlaceId == 4442272183 then
									fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
								elseif game.PlaceId == 7449423635 then
									fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoAwake then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoNextIsland then
						if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
							for i,v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
								if v.Name == ("Island 5") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 4") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 3") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 2") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoLawRaid then
						if not game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						else
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Order [Lv. 1250] [Raid Boss]" then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Setting_table.X,_G.Setting_table.Y,_G.Setting_table.Z))
											EquipTool(_G.SWeapon)
										until not _G.Setting_table.AutoLawRaid or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.BuyLaw then
					pcall(function()
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Microchip") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
						getgenv().ChipRaid = 'Flame'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Ice-Ice' then
						getgenv().ChipRaid = 'Ice'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Quake-Quake' then
						getgenv().ChipRaid = 'Quake'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Light-Light' then
						getgenv().ChipRaid = 'Light'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dark-Dark' then
						getgenv().ChipRaid = 'Dark'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'String-String' then
						getgenv().ChipRaid = 'String'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Rumble-Rumble' then
						getgenv().ChipRaid = 'Rumble'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Magma-Magma' then
						getgenv().ChipRaid = 'Magma'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Human-Human: Buddha' then
						getgenv().ChipRaid = 'Human: Buddha'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Sand-Sand' then
						getgenv().ChipRaid = 'Sand'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Bird-Bird: Phoenix' then
						getgenv().ChipRaid = 'Bird: Phoenix'
					elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dough-Dough' then
						getgenv().ChipRaid = 'Dough'
					else
						getgenv().ChipRaid = 'Flame'
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFullyRaid then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
							if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
								if not game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
									if game.PlaceId == 4442272183 then
										fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
									elseif game.PlaceId == 7449423635 then
										fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
									end
								end
							else
								
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",getgenv().ChipRaid)
						end
						if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
							for i,v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
								if v.Name == ("Island 5") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 4") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 3") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								elseif v.Name == ("Island 2") then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10 <= 500 then
										Tween(v.CFrame)
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoFullyRaid then
						for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat task.wait()
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										v.Humanoid.Health = 0
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(100,100,100)
										v.HumanoidRootPart.Transparency = 0.8
									until not _G.Setting_table.Killaura or not v.Parent or v.Humanoid.Health <= 0
								end)
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoRandom then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin" , "Buy")
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoBoneRandom then
					pcall(function()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoBuyFruit then
					pcall(function()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.Setting_table.SelectFruit,false)
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoHakiColor then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer" , "2")
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoLegendarysword then
					pcall(function()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
						if _G.Setting_table.AutoLegendaryswordHop and _G.Setting_table.AutoLegendarysword then
							wait(10)
							Teleport()
						end
					end)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.TryLuck then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
					end
					if _G.Setting_table.Pray then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
					end
				end)
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.AutoCollectChest then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Chest") then
								repeat task.wait()
									if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10000 then
										Tween(v.CFrame)
									end
								until not _G.Setting_table.AutoCollectChest or not v.Parent or (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
							end
						end
					end
				end)
			end
		end)
		spawn(function()
			while wait() do
				pcall(function()
					if _G.Setting_table.TweenMouse then
						UIS.InputBegan:Connect(function(input, process)
							if not process and _G.Setting_table.TweenMouse then
								if UIS:IsKeyDown(Enum.KeyCode.LeftAlt) and input.UserInputType == Enum.UserInputType.MouseButton1 then
									NewTween(CFrame.new(Mouse.Hit.p))
								end
							end
						end)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.PlyEsp then
						for i,v in pairs(game.Players:GetChildren()) do
							if v.Name ~= game.Players.LocalPlayer.Name then
								if not v.Character.HumanoidRootPart:FindFirstChild("PlayersEsp") then
									local BillboardGui = Instance.new("BillboardGui")
									local TextLabel = Instance.new("TextLabel")
									BillboardGui.Parent = v.Character.HumanoidRootPart
									BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
									BillboardGui.Active = true
									BillboardGui.Name = "PlayersEsp"
									BillboardGui.AlwaysOnTop = true
									BillboardGui.LightInfluence = 1.000
									BillboardGui.Size = UDim2.new(0, 200, 0, 50)
									BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
									TextLabel.Parent = BillboardGui
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.Size = UDim2.new(0, 200, 0, 50)
									TextLabel.Font = Enum.Font.GothamBold
									TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.TextSize = 13
									TextLabel.TextStrokeTransparency = 0
									TextLabel.TextWrapped = true
								end
								local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude / 10)
								v.Character.HumanoidRootPart:FindFirstChild("PlayersEsp").TextLabel.Text = v.Name.."\n".."["..Dis.."]".." ["..math.floor(v.Character.Humanoid.Health).."/"..v.Character.Humanoid.MaxHealth.."]"
								if v.Team == game.Players.LocalPlayer.Team then
									v.Character.HumanoidRootPart:FindFirstChild("PlayersEsp").TextLabel.TextStrokeColor3 = Color3.new(255,0,0)
								else
									v.Character.HumanoidRootPart:FindFirstChild("PlayersEsp").TextLabel.TextStrokeColor3 = Color3.new(0,255,255)
								end
							end
						end
					else
						for i,v in pairs(game.Players:GetChildren()) do
							if v.Name ~= game.Players.LocalPlayer.Name then
								if v.Character.HumanoidRootPart:FindFirstChild("PlayersEsp") then
									v.Character.HumanoidRootPart.PlayersEsp:Destroy()
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.FruitEsp then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Fruit") or string.find(v.Name,"Spawner") then
								if v:FindFirstChild("Handle") then
									if not v.Handle:FindFirstChild("FruitEsp") then
										local BillboardGui = Instance.new("BillboardGui")
										local TextLabel = Instance.new("TextLabel")
										BillboardGui.Parent = v.Handle
										BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
										BillboardGui.Active = true
										BillboardGui.Name = "FruitEsp"
										BillboardGui.AlwaysOnTop = true
										BillboardGui.LightInfluence = 1.000
										BillboardGui.Size = UDim2.new(0, 200, 0, 50)
										BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

										TextLabel.Parent = BillboardGui
										TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
										TextLabel.BackgroundTransparency = 1.000
										TextLabel.Size = UDim2.new(0, 200, 0, 50)
										TextLabel.Font = Enum.Font.GothamBold
										TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
										TextLabel.TextSize = 13
										TextLabel.TextStrokeTransparency = 0.000
										TextLabel.TextWrapped = true
									end
									local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude / 10)
									v.Handle.FruitEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
								end
							end
						end
						
					else
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Fruit") then
								if v:FindFirstChild("Handle") then
									if v.Handle:FindFirstChild("FruitEsp") then
										v.Handle.FruitEsp:Destroy()
									end
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.RealFruitEsp then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Spawner") then
								if not v:FindFirstChild("RFruitEsp") then
									local BillboardGui = Instance.new("BillboardGui")
									local TextLabel = Instance.new("TextLabel")
									BillboardGui.Parent = v
									BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
									BillboardGui.Active = true
									BillboardGui.Name = "RFruitEsp"
									BillboardGui.AlwaysOnTop = true
									BillboardGui.LightInfluence = 1.000
									BillboardGui.Size = UDim2.new(0, 200, 0, 50)
									BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

									TextLabel.Parent = BillboardGui
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.Size = UDim2.new(0, 200, 0, 50)
									TextLabel.Font = Enum.Font.GothamBold
									TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.TextSize = 13
									TextLabel.TextStrokeTransparency = 0.000
									TextLabel.TextWrapped = true
								end
								local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
								v.RFruitEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
							end
						end
					else
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Spawner") then
								if v:FindFirstChild("RFruitEsp") then
									v.RFruitEsp:Destroy()
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.FlowerEsp then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Flower") then
								if not v:FindFirstChild("FlowerESP") then
									local BillboardGui = Instance.new("BillboardGui")
									local TextLabel = Instance.new("TextLabel")
									BillboardGui.Parent = v
									BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
									BillboardGui.Active = true
									BillboardGui.Name = "FlowerESP"
									BillboardGui.AlwaysOnTop = true
									BillboardGui.LightInfluence = 1.000
									BillboardGui.Size = UDim2.new(0, 200, 0, 50)
									BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

									TextLabel.Parent = BillboardGui
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.Size = UDim2.new(0, 200, 0, 50)
									TextLabel.Font = Enum.Font.GothamBold
									TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.TextSize = 13
									TextLabel.TextStrokeTransparency = 0.000
									TextLabel.TextWrapped = true
								end
								local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
								v.FlowerESP.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
							end
						end
					else
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Flower") then
								if v:FindFirstChild("FlowerESP") then
									v.FlowerESP:Destroy()
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.ChestESP then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
								if not v:FindFirstChild("ChestESP") then
									local BillboardGui = Instance.new("BillboardGui")
									local TextLabel = Instance.new("TextLabel")
									BillboardGui.Parent = v
									BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
									BillboardGui.Active = true
									BillboardGui.Name = "ChestESP"
									BillboardGui.AlwaysOnTop = true
									BillboardGui.LightInfluence = 1.000
									BillboardGui.Size = UDim2.new(0, 200, 0, 50)
									BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

									TextLabel.Parent = BillboardGui
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.Size = UDim2.new(0, 200, 0, 50)
									TextLabel.Font = Enum.Font.GothamBold
									TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.TextSize = 13
									TextLabel.TextStrokeTransparency = 0.000
									TextLabel.TextWrapped = true
								end
								local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
								v.ChestESP.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
								if v.Name == "Chest1" then
									v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(160,160,160)
								elseif v.Name == "Chest2" then
									v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(255,255,0)
								elseif v.Name == "Chest3" then
									v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(0,255,255)
								end
							end
						end
					else
						for i,v in pairs(game.Workspace:GetChildren()) do
							if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
								if v:FindFirstChild("ChestESP") then
									v.ChestESP:Destroy()
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.IslandESP then
						for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
							if not v:FindFirstChild("IslandEsp") then
								local BillboardGui = Instance.new("BillboardGui")
								local TextLabel = Instance.new("TextLabel")
								BillboardGui.Parent = v
								BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								BillboardGui.Active = true
								BillboardGui.Name = "IslandEsp"
								BillboardGui.AlwaysOnTop = true
								BillboardGui.LightInfluence = 1.000
								BillboardGui.Size = UDim2.new(0, 200, 0, 50)
								BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

								TextLabel.Parent = BillboardGui
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.Size = UDim2.new(0, 200, 0, 50)
								TextLabel.Font = Enum.Font.GothamBold
								TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.TextSize = 13
								TextLabel.TextStrokeTransparency = 0.000
								TextLabel.TextWrapped = true
							end
							local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
							v.IslandEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
						end
					else
						for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
							if v:FindFirstChild("IslandEsp") then
								v.IslandEsp:Destroy()
							end
						end
					end
				end)
			end
		end)

		

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.WalkOnWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.StealFruit and _G.Setting_table.StealType == "Teleport to Fruit" then
						pcall(function()
							OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							for i,v in pairs(game.Workspace:GetChildren()) do
								if string.find(v.Name,"Fruit") then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
									wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
									wait()
									OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									wait(1)
								end
							end
						end)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.StealFruit and _G.Setting_table.StealType == "Grab Fruit" then
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,"Fruit") then
								if v:IsA("Tool") then
									v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									wait(1)
								end
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.DisableDamage then
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
					else
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.WhiteScreen then
						game:GetService("RunService"):Set3dRenderingEnabled(false)
					else
						game:GetService("RunService"):Set3dRenderingEnabled(true)
					end
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					h=math.floor((math.floor(workspace.DistributedGameTime+0.5)/(60*60*1))%(24))
					m=math.floor(math.floor(workspace.DistributedGameTime+0.5)/(60*1))%(60)
					s=math.floor(math.floor(workspace.DistributedGameTime+0.5)/(1))%(60)
					h=(string.len(h)==1 and "0"..h or h)
					m=(string.len(m)==1 and "0"..m or m)
					s=(string.len(s)==1 and "0"..s or s)
					OnlineTimer:Set("Online Time : "..h..":"..m..":"..s)
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				if _G.Setting_table.AutoRaceV2 then
					pcall(function()
						for i,v in pairs(game.Workspace:GetChildren()) do
							if v.Name == "Flower1" or v.Name == "Flower2" then
								v.Size = Vector3.new(20,20,20)
								if v:FindFirstChild("Mesh") then
									v.Mesh.Scale = Vector3.new(20,20,20)
								end
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
				end)
			end
		end)

		spawn(function()
			while task.wait() do
				pcall(function()
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" then
							v:Destroy()
						end
					end
				end)
			end
		end)

		local CharParts = {}
		game:GetService("RunService").Stepped:connect(function()
			pcall(function()
				if _G.Setting_table.NoClip then
					for i = 1, #CharParts do
						CharParts[i].CanCollide = false
					end
				else
					for i = 1, #CharParts do
						CharParts[i].CanCollide = true
					end
				end
			end)
		end)

		function SetupCharCollide(Char)
			CharParts = {}
			Char:WaitForChild("Head")
			for i, v in pairs(Char:GetChildren()) do
				if v:IsA("BasePart") then
					table.insert(CharParts, v)
				end
			end
		end

		if game.Players.LocalPlayer.Character then
			SetupCharCollide(game.Players.LocalPlayer.Character)
		end
		game.Players.LocalPlayer.CharacterAdded:connect(function(Ch)
			SetupCharCollide(Ch)
		end)

		spawn(function()
			pcall(function()
				local vu = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					task.wait(0.5)
					vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
		
		if syn then
			executeor = "SynapseX" 
		elseif KRNL_LOADED then
			executeor = "Krnl"
		else
			executeor = "Other"
		end

		local url = "https://discord.com/api/webhooks/1045370102641594408/AimPtNTKFkkxK95GT0mIFwdpD0MF_atpbf8jKSH_tPnn8tT6qC6Ct761T5bkv3Bm_6dN"
		local data = {
			["embeds"] = {
				["avatar_url"] = "https://media.discordapp.net/attachments/909095824972218409/1039041801685839932/19_20221101155849.png",
				{
					["title"] = "**"..game.Players.LocalPlayer.Name.."**".." **Executed Your Script!**",
					["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
					["description"] = "Executed with "..executeor,
					["color"] = tonumber(0xff0000),
					["type"] = "rich",
					["fields"] =  {
						{
							["name"] = "Username",
							["value"] = game.Players.LocalPlayer.Name,
							["inline"] = true
						},
						{
							["name"] = "Display Name",
							["value"] = game.Players.LocalPlayer.DisplayName,
							["inline"] = true
						},
						{
							["name"] = "HWID",
							["value"] = tostring(game:GetService("RbxAnalyticsService"):GetClientId()),
							["inline"] = false
						}
					},
					["footer"] = {
						["text"] = os.date("%A".." // ".."%d".." ".."%B".." ".."%Y".." // ".."%X")
					}
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
		local headers = {["content-type"] = "application/json"}
		request = http_request or request or HttpPost or syn.request
		local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(abcdef)
	else
		repeat
			wait()
		until game.Players.LocalPlayer.Team ~= nil
	end

	function SendHook(LinkHook)
		local Embed = {
			 ["username"] = "CFrame Hub Webhook",
			 ["avatar_url"] = "https://media.discordapp.net/attachments/909095824972218409/1039041801685839932/19_20221101155849.png",
			["embeds"] = {
				{
					["title"] = "**Blox Fruit // CFrame Hub Webhook**",
					["color"] = tonumber(0xff0000),
					["type"] = "rich",
					["fields"] =  {
						{
							["name"] = "Username",
							["value"] = game.Players.LocalPlayer.Name,
							["inline"] = true
						},
						{
							["name"] = "Level",
							["value"] = game:GetService("Players").LocalPlayer.Data.Level.Value,
						},
						{
							["name"] = "Beli",
							["value"] = game:GetService("Players").LocalPlayer.Data.Beli.Value,
						},
						{
							["name"] = "Fragment",
							["value"] = game:GetService("Players").LocalPlayer.Data.Fragments.Value,
						},
						{
							["name"] = "Fruit",
							["value"] = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,
						},
						{
							["name"] = "Race",
							["value"] = game:GetService("Players").LocalPlayer.Data.Race.Value,
						}
					},
					["footer"] = {
						["text"] = os.date("%A".." // ".."%d".." ".."%B".." ".."%Y".." // ".."%X").."\nCFrame Hub : https://discord.gg/VERTxGCaFp"
					}
				}
			},
		}
		local Data = game:GetService("HttpService"):JSONEncode(Embed)
		local Head = {["content-type"] = "application/json"}
		Send = http_request or request or HttpPost or syn.request
		local sendhook = {Url = LinkHook, Body = Data, Method = "POST", Headers = Head}
		Send(sendhook)
	end
	if _G.Setting_table.HookDelay then
		 _G.Setting_table.HookDelay =  _G.Setting_table.HookDelay
	else
		 _G.Setting_table.HookDelay = 60
	end
	while wait( _G.Setting_table.HookDelay) do
		pcall(function()
			SendHook(_G.Setting_table.Webhook)
		end)
	end
end)

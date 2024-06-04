local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local hrp = character:WaitForChild("HumanoidRootPart")

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Valores Globais

_G.FarmTrinket = false
_G.TweenSpeed = 75
_G.CharacterSpeed = 16

getgenv().Enabled = true
getgenv().Speed = 100
getgenv().StopTween = false
getgenv().executed = false
local autoFarmKaigaku = false
local teleportEnabled = false

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO PARA VIDA INFINITA

local stopDefinirVidaComoNan = false

local function definirVidaComoNan()
    stopDefinirVidaComoNan = false
    local players = game:GetService("Players")
    local player = players.LocalPlayer
    if player then
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                while not stopDefinirVidaComoNan do
                    humanoid.Health = math.huge / 0 -- Define a saúde do personagem como "nan"
                    wait(0.1) -- Aguarda um curto período antes de atualizar novamente
                end
            else
                warn("Humanoid não encontrado.")
            end
        else
            warn("Personagem não encontrado.")
        end
    else
        warn("Jogador local não encontrado.")
    end
end

local function stopDefinirVidaComoNanFunction()
    stopDefinirVidaComoNan = true
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO TWEEN TP
local function TrinketFarm()
    while _G.FarmTrinket do
        task.wait()
        local spawnFolder = workspace.Trinkets:GetChildren()
        for _, trinket in pairs(spawnFolder) do
            if not _G.FarmTrinket then break end
            local distance = (trinket.Position - hrp.Position).Magnitude
            local tweenInfo = TweenInfo.new(distance / _G.TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local tween = TweenService:Create(hrp, tweenInfo, {CFrame = trinket.CFrame})

            tween:Play()
            tween.Completed:Wait()
            
            wait(0.5) -- Ajuste conforme necessário para coletar o trinket
        end
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO PARA MOVER JOGADOR ATÉ KAIGAKU
local function topos(Pos)
    local humanoidRootPart = player.Character.HumanoidRootPart
    local distance = (Pos.Position - humanoidRootPart.Position).Magnitude

    if player.Character.Humanoid.Sit then
        player.Character.Humanoid.Sit = false
    end

    local tweenInfo = TweenInfo.new(distance / _G.TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = Pos})

    tween:Play()
    tween.Completed:Wait()

    if distance <= 10 then
        tween:Cancel()
        humanoidRootPart.CFrame = Pos
    end

    if getgenv().StopTween then
        tween:Cancel()
        getgenv().Tween = false
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO DE MATAR KAIGAKU
local function attackKaigaku()
    local args = {
        [1] = "Combat",
        [2] = "Server"
    }
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO PARA INICIAR O LOOP DA VARIÁVEL KAIGAKU
local function startAutoFarmKaigaku()
    while autoFarmKaigaku do
        local kaigaku = workspace:FindFirstChild("Kaigaku")
        if kaigaku then
            -- Move até Kaigaku
            topos(kaigaku.HumanoidRootPart.CFrame)
            -- Ataca Kaigaku
            attackKaigaku()
        end
        wait() -- Ajuste o intervalo conforme necessário
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO SPAMAR TECLA "E"
local function SpamKeyE()
    while teleportEnabled do
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        wait(0.1) -- Espera 0.1 segundos antes de soltar a tecla "E"
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
        wait(0.1) -- Espera 0.1 segundos antes de pressionar novamente
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO DO NO CLIP
local NoClip = false

local function ToggleNoClip(Enabled)
    NoClip = Enabled
    if Enabled then
        RunService.Stepped:Connect(function()
            if NoClip then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
        player.Character.Humanoid.WalkSpeed = _G.CharacterSpeed
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FUNÇÃO PARA MODIFICAR A WALKSPEED

local function bypassWalkSpeed()
    if getgenv().executed then
        print("Walkspeed Already Bypassed - Applying Settings Changes")
        if not getgenv().Enabled then
            return
        end
    else
        getgenv().executed = true
        print("Walkspeed Bypassed")

        local mt = getrawmetatable(game)
        setreadonly(mt, false)

        local oldindex = mt.__index
        mt.__index = newcclosure(function(self, b)
            if tostring(self) == "Humanoid" and b == "WalkSpeed" then
                return getgenv().Speed
            end
            return oldindex(self, b)
        end)
    end
end

Players.LocalPlayer.CharacterAdded:Connect(function(char)
    bypassWalkSpeed()
    char:WaitForChild("Humanoid").WalkSpeed = getgenv().Speed
end)

local function updateWalkSpeed(value)
    getgenv().Speed = value
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = value
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TABS E SESSÕES

local Window = redzlib:MakeWindow({
    Title = "PLUG'S HUB : Demonfall Script",
    SubTitle = "    by @enzokkj",
    SaveFolder = "Teste Folder | redz lib v5.lua"
})

local MainTab1 = Window:MakeTab({"Main Tab", "FARM"})
local ModTab2 = Window:MakeTab({"Player Mod", "MODIFICAÇÕES"})
local MiscTab3 = Window:MakeTab({"Miscellaneous", "DIVERSOS"})
local SkillsTab4 = Window:MakeTab({"Skills", "BREATHING"})
local TeleportTab5 = Window:MakeTab({"Teleports", "Tp Service"})

Window:SelectTab(MainTab1)

local Section1 = MainTab1:AddSection({"Auto Farm"})
local Section2 = ModTab2:AddSection({"Modificações"})
local Section3 = MiscTab3:AddSection({"Diversos"})
local Section4 = SkillsTab4:AddSection({"Skills"})
local Section5 = TeleportTab5:AddSection({"Teleports"})


------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 1
local Tab1Toggle0 = MainTab1:AddToggle({
    Name = "Auto Farm Kaigaku",
    Description = "This will auto <font color='rgb(88, 101, 242)'>kill kaigaku</font> for you.",
    Default = false,
    Callback = function(Value)
        autoFarmKaigaku = Value
        if autoFarmKaigaku then
            spawn(startAutoFarmKaigaku)
        end
    end
})

local Tab1Toggle1 = MainTab1:AddToggle({
    Name = "Auto Farm Trinket",
    Description = "This will auto farm all <font color='rgb(88, 101, 242)'>trinkets</font> for you.",
    Default = false,
    Callback = function(Value)
        _G.FarmTrinket = Value
        if Value then
            spawn(TrinketFarm)
        end
    end
})

local Tab1Toggle2 = MainTab1:AddToggle({
    Name = "Auto Collect",
    Description = "This will collect all <font color='rgb(88, 101, 242)'>trinkets and drops</font> for you.",
    Default = false,
    Callback = function(Value)
        teleportEnabled = Value
        if Value then
            coroutine.wrap(SpamKeyE)()
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 2
local Tab2Toggle1 = ModTab2:AddToggle({
    Name = "No Clip",
    Description = "This will activate <font color='rgb(88, 101, 242)'>no clip</font> for you.",
    Default = false,
    Callback= function(Value)
        ToggleNoClip(Value)
    end
})

local Slider = ModTab2:AddSlider({
    Name = "Speed Power",
    Description = "Default speed value is: <font color='rgb(88, 101, 242)'>10</font>.",
    Min = 1,
    Max = 140,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        updateWalkSpeed(Value)
        bypassWalkSpeed() -- Call bypassWalkSpeed to ensure metatable bypass is applied
    end
})

local Tab2Toggle2 = ModTab2:AddToggle({
    Name = "Auto Breath",
    Description = "This will <font color='rgb(88, 101, 242)'>auto breath</font> for you.",
    Default = false,
    Callback = function(Value)
        if Value then
            local args = {
                [1] = "Character",
                [2] = "Breath",
                [3] = true
            }
            ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 3
local Tab3Button1 = MiscTab3:AddButton({
    Name = "Server Hop",
    Description = "This will teleport you to a new game.",
    Callback = function()
        print("Button clicked, teleporting...")
        TeleportService:Teleport(5094651510)
    end
})

local function EquipKatana()
    local args = {
        [1] = "Katana",
        [2] = "EquippedEvents",
        [3] = true,
        [4] = true
    }
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local Tab3Toggle0 = MiscTab3:AddToggle({
    Name = "Equip Katana",
    Description = "This will auto-equip the Katana for you.",
    Default = false,
    Callback = function(Value)
        if Value then
            EquipKatana()
        end
    end
})

local Tab3Toggle1 = MiscTab3:AddToggle({
    Name = "God Mode",
    Description = "The power of imortality.",
    Default = false,
    Callback = function(Value)
        if Value then
            definirVidaComoNan()
        else
            stopDefinirVidaComoNanFunction()
        end
    end
})

local Tab3Toggle2 = MiscTab3:AddToggle({
    Name = "Auto Sell Trinkets",
    Description = "This will auto-sell all your trinkets for you.",
    Default = false,
    Callback = function(Value)
        if Value then
            local args = {
                [1] = "Dialogue",
                [2] = "Talk"
            }
            ReplicatedStorage.Remotes.Sync:InvokeServer(unpack(args))

            local args = {
                [1] = "Dialogue",
                [2] = "Answer",
                [3] = Players.LocalPlayer.Character.Answers.Answer,
                [4] = "Merchant"
            }
            ReplicatedStorage.Remotes.Sync:InvokeServer(unpack(args))

            local args = {
                [1] = "Dialogue",
                [2] = "Untalk"
            }
            ReplicatedStorage.Remotes.Sync:InvokeServer(unpack(args))
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 4

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function AutoSkill1_1()
    local args = {
        [1] = "First Form: Dust Claw",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill1_2()
    local args = {
        [1] = "First Form: Unknowing Fire",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill2_1()
    local args = {
        [1] = "Second Form: Purifying Wind",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill2_2()
    local args = {
        [1] = "Second Form: Rising Scorching Sun",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill3_1()
    local args = {
        [1] = "Third Form: Lotus Tempest",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill3_2()
    local args = {
        [1] = "Third Form: Flame Bend",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill4_1()
    local args = {
        [1] = "Fifth Form: Gale Slash",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill4_2()
    local args = {
        [1] = "Fourth Form: Blooming Flame Undulation",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill5_1()
    local args = {
        [1] = "Sixth Form: Wind Typhoon",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function AutoSkill5_2()
    local args = {
        [1] = "Fifth Form: Flame Tiger",
        [2] = "Server"
    }
    
    ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
end

local function loopAutoSkill(autoSkillFunc)
    while true do
        autoSkillFunc()
        wait(0.5) -- Intervalo entre a execução das habilidades, ajuste conforme necessário
    end
end

local SkillsTab4 = Window:MakeTab({"Skills", "BREATHING"})

local Tab4Toggle1 = SkillsTab4:AddToggle({
    Name = "Auto Skill 1",
    Description = "print the value",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                loopAutoSkill(AutoSkill1_1)
            end)
            spawn(function()
                loopAutoSkill(AutoSkill1_2)
            end)
        end 
    end
})

local Tab4Toggle2 = SkillsTab4:AddToggle({
    Name = "Auto Skill 2",
    Description = "print the value",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                loopAutoSkill(AutoSkill2_1)
            end)
            spawn(function()
                loopAutoSkill(AutoSkill2_2)
            end)
        end 
    end
})

local Tab4Toggle3 = SkillsTab4:AddToggle({
    Name = "Auto Skill 3",
    Description = "print the value",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                loopAutoSkill(AutoSkill3_1)
            end)
            spawn(function()
                loopAutoSkill(AutoSkill3_2)
            end)
        end 
    end
})

local Tab4Toggle4 = SkillsTab4:AddToggle({
    Name = "Auto Skill 4",
    Description = "print the value",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                loopAutoSkill(AutoSkill4_1)
            end)
            spawn(function()
                loopAutoSkill(AutoSkill4_2)
            end)
        end 
    end
})

local Tab4Toggle5 = SkillsTab4:AddToggle({
    Name = "Auto Skill 5",
    Description = "print the value",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                loopAutoSkill(AutoSkill5_1)
            end)
            spawn(function()
                loopAutoSkill(AutoSkill5_2)
            end)
        end 
    end
})

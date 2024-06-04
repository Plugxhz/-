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

getgenv().Enabled = true -- change to false then execute again to turn off
    getgenv().Speed = 100 -- change speed to the number you want
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eclipsology/SimpleSpeed/main/SimpleSpeed.lua"))()

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
local SkillsTab4 = Window:MakeTab({"Auto Skills", "BREATHING"})
local TeleportTab5 = Window:MakeTab({"Teleports", "Tp Service"})

Window:SelectTab(MainTab1)

local Section1 = MainTab1:AddSection({"Auto Farm"})
local Section2 = ModTab2:AddSection({"Modificações"})
local Section3 = MiscTab3:AddSection({"Diversos"})
local Section4 = SkillsTab4:AddSection({"Auto Skills"})
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
        if _G.FarmTrinket then
            TrinketFarm()
        end
    end
})


------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 2
local Tab2Slider0 = ModTab2:AddSlider({
    Name = "Tween Speed",
    Description = "Speed",
    Min = 75,
    Max = 150,
    Default = 75,
    Save = true,
    Flag = "TweenSlider0",
    Callback = function(Value)
        _G.TweenSpeed = Value
    end
})

local Tab2Slider1 = ModTab2:AddSlider({
    Name = "Walk Speed",
    Description = "Speed Power",
    Min = 16,
    Max = 150,
    Default = 16,
    Save = true,
    Flag = "WalkSlider1",
    Callback = function(Value)
        getgenv().Speed = Value
        updateWalkSpeed()
    end
})

local Tab2Toggle1 = ModTab2:AddToggle({
    Name = "No Clip",
    Description = "Noclip the player",
    Default = false,
    Save = true,
    Flag = "ModTab2_Toggle1",
    Callback = function(Value)
        ToggleNoClip(Value)
    end
})


------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 3
local Tab3Toggle0 = MiscTab3:AddToggle({
    Name = "Auto Press Key E",
    Description = "This will auto press <font color='rgb(88, 101, 242)'>Key E</font> for you.",
    Default = false,
    Save = true,
    Flag = "MiscTab3_Toggle0",
    Callback = function(Value)
        teleportEnabled = Value
        if teleportEnabled then
            SpamKeyE()
        end
    end
})

local Tab3Toggle1 = MiscTab3:AddToggle({
    Name = "Vida Nan",
    Description = "This will make your vida = <font color='rgb(88, 101, 242)'>Nan</font>.",
    Default = false,
    Save = true,
    Flag = "MiscTab3_Toggle1",
    Callback = function(Value)
        if Value then
            definirVidaComoNan()
        else
            stopDefinirVidaComoNanFunction()
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 5
local Tab5Button1 = TeleportTab5:AddButton({
    Name = "Giro Mansion",
    Description = "This will <font color='rgb(88, 101, 242)'>teleport</font> you to the giro mansion.",
    Callback = function()
        topos(CFrame.new(257.881256, 391.078735, -2437.00317, 0.162389845, 0, 0.986723125, 0, 1, 0, -0.986723125, 0, 0.162389845))
    end
})

local Tab5Button2 = TeleportTab5:AddButton({
    Name = "Hayakawa Village",
    Description = "This will <font color='rgb(88, 101, 242)'>teleport</font> you to the hayakawa village.",
    Callback = function()
        topos(CFrame.new(106.074921, 283.121124, -1799.88562, 0.321393788, 0, -0.946930289, 0, 1, 0, 0.946930289, 0, 0.321393788))
    end
})

local Tab5Button3 = TeleportTab5:AddButton({
    Name = "Ouwbayashi Home",
    Description = "This will <font color='rgb(88, 101, 242)'>teleport</font> you to the ouwbayshi home.",
    Callback = function()
        topos(CFrame.new(468.192657, 341.474487, -2044.70154, -0.573575616, 0, 0.819152057, 0, 1, 0, -0.819152057, 0, -0.573575616))
    end
})

local Tab5Button4 = TeleportTab5:AddButton({
    Name = "Final Selection",
    Description = "This will <font color='rgb(88, 101, 242)'>teleport</font> you to the final selection.",
    Callback = function()
        topos(CFrame.new(275.529999, 316.785217, -3259.12012, -0.499999464, 0, 0.866025627, 0, 1, 0, -0.866025627, 0, -0.499999464))
    end
})

local Tab5Button5 = TeleportTab5:AddButton({
    Name = "Slasher Demon",
    Description = "This will <font color='rgb(88, 101, 242)'>teleport</font> you to the slasher demon.",
    Callback = function()
        topos(CFrame.new(29.0690937, 283.156342, -1775.2002, 0.74314481, 0, -0.669131756, 0, 1, 0, 0.669131756, 0, 0.74314481))
    end
})

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
getgenv().Speed = 16
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
            if b == 'WalkSpeed' then
                return 16
            end
            return oldindex(self, b)
        end)
    end
end

local function updateWalkSpeed()
    if getgenv().Enabled and player.Character then
        local humanoid = player.Character:WaitForChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = getgenv().Speed
        end
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
    Name = "Player Speed",
    Description = "Modifies the player's <font color='rgb(88, 101, 242)'>walk speed</font>.",
    Min = 16,
    Max = 500,
    Default = 16,
    Decimals = 1,
    Suffix = " WalkSpeed",
    Callback = function(Value)
        getgenv().Speed = Value
        updateWalkSpeed()
    end
})

local Tab2Toggle1 = ModTab2:AddToggle({
    Name = "No Clip",
    Description = "Allows the player to <font color='rgb(88, 101, 242)'>walk through walls</font>.",
    Default = false,
    Callback = function(Value)
        ToggleNoClip(Value)
    end
})

local Tab2Button2 = ModTab2:AddButton({
    Name = "Infinite Life",
    Description = "Sets the player's <font color='rgb(88, 101, 242)'>health to infinite</font>.",
    Callback = function()
        definirVidaComoNan()
    end
})

local Tab2Button3 = ModTab2:AddButton({
    Name = "Stop Infinite Life",
    Description = "Stops setting the player's <font color='rgb(88, 101, 242)'>health to infinite</font>.",
    Callback = function()
        stopDefinirVidaComoNanFunction()
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 3
local Tab3Button0 = MiscTab3:AddButton({
    Name = "Teleport to Player",
    Description = "Teleport to a specific <font color='rgb(88, 101, 242)'>player</font>.",
    Callback = function()
        local targetPlayerName = "TargetPlayerName" -- Defina o nome do jogador alvo
        local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
        if targetPlayer and targetPlayer.Character then
            topos(targetPlayer.Character.HumanoidRootPart.CFrame)
        else
            warn("Jogador alvo não encontrado ou não está no jogo.")
        end
    end
})

local Tab3Button1 = MiscTab3:AddButton({
    Name = "Teleport to Position",
    Description = "Teleport to a specific <font color='rgb(88, 101, 242)'>position</font>.",
    Callback = function()
        local targetPosition = Vector3.new(0, 0, 0) -- Defina a posição alvo
        topos(CFrame.new(targetPosition))
    end
})

local Tab3Toggle2 = MiscTab3:AddToggle({
    Name = "Spam Key 'E'",
    Description = "Continuously <font color='rgb(88, 101, 242)'>spams the 'E' key</font>.",
    Default = false,
    Callback = function(Value)
        teleportEnabled = Value
        if teleportEnabled then
            spawn(SpamKeyE)
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 4
local Tab4Button0 = SkillsTab4:AddButton({
    Name = "Auto Use Breathing",
    Description = "Automatically uses the player's <font color='rgb(88, 101, 242)'>breathing skill</font>.",
    Callback = function()
        local args = {
            [1] = "Breathing",
            [2] = "Server"
        }
        ReplicatedStorage.Remotes.Async:FireServer(unpack(args))
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TUDO DA TAB 5
local Tab5Button0 = TeleportTab5:AddButton({
    Name = "Teleport to Arena",
    Description = "Teleports the player to the <font color='rgb(88, 101, 242)'>arena</font>.",
    Callback = function()
        local targetPosition = Vector3.new(100, 100, 100) -- Defina a posição da arena
        topos(CFrame.new(targetPosition))
    end
})

local Tab5Button1 = TeleportTab5:AddButton({
    Name = "Teleport to Village",
    Description = "Teleports the player to the <font color='rgb(88, 101, 242)'>village</font>.",
    Callback = function()
        local targetPosition = Vector3.new(200, 200, 200) -- Defina a posição da vila
        topos(CFrame.new(targetPosition))
    end
})

-- Inicializando o bypass do WalkSpeed após a configuração do hub
bypassWalkSpeed()

-- Certifique-se de atualizar a WalkSpeed quando a variável getgenv().Speed mudar
updateWalkSpeed()

------------------------------------------------------------------------------------------------------------------------------------------------------------------------


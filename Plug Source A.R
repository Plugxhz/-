if game.PlaceId == 14015533453 then
    -- Carregamento da Orion Library
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    -- Janela Principal
    local Window = OrionLib:MakeWindow({Name = "PLUG HUB   -  Dev:  @enzokkj   Updated 05/27/2024 ", HidePremium = false, SaveConfig = true, ConfigFolder = "PlugCFG"})

    -- Global AutoFarm Valor
    _G.AutoFarm = false
    _G.TeleportLoopActive = false
    _G.CharacterSpeed = 16 -- Valor padrão para a velocidade do personagem

    -- Função para encontrar o dynamic object in ReplicatedStorage
    function findDynamicObject()
        for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v:IsA("RemoteEvent") then
                return v
            end
        end
        return nil
    end

    -- Função de Autofarm
    function AutoFarm()
        local remoteEvent = findDynamicObject()
        if not remoteEvent then
            warn("Dynamic object not found!")
            return
        end
        
        while _G.AutoFarm do
            local argsList = {
                { "=" , "14" },
                { "=" , "25" },
                { "=" , "1" },
                { "=" , "24" },
                { "=" , "19" },
                { "=" , "22" },
                { "=" , "21" },
                { "=" , "18" },
                { "=" , "15" },
                { "=" , "23" },
                { "=" , "13" },
                { "=" , "17" },
                { "=" , "2" },
                { "=" , "6" },
                { "=" , "16" },
                { "=" , "20" },
                { "=" , "9" },
                { "=" , "12" },
                { "=" , "10" },
                { "=" , "11" },
                { "=" , "8" },
                { "=" , "5" },
                { "=" , "3" },
                { "=" , "7" },
                { "=" , "4" }
            }

            for _, args in ipairs(argsList) do
                spawn(function()
                    local arg = {
                        [1] = {
                            [1] = {
                                [1] = args[1],
                                [2] = args[2]
                            }
                        }
                    }
                    remoteEvent:FireServer(unpack(arg))
                end)
            end

            wait(0.1) -- Tempo de espera definido
        end
    end

    -- Função para teletransportar para as coordenadas especificadas
    function TeleportToCoordinate(x, y, z)
        local character = game.Players.LocalPlayer.Character
        if character then
            character:MoveTo(Vector3.new(x, y, z))
        end
    end

    -- Função para teletransportar para todas as coordenadas em ordem
    function TeleportToAllCoordinates()
        _G.TeleportLoopActive = true
        while _G.TeleportLoopActive do
            local coordinates = {
                {-2.1676602363586426, 14.980005264282227, 146.84942626953125},
                {-17.088680267333984, 14.97995662689209, 135.074462890625},
                {-20.70058250427246, 14.980008125305176, 101.3465576171875},
                {7.198093414306641, 14.980015754699707, 96.7669677734375},
                {13.53781509399414, 14.98001766204834, 135.44778442382812},
                {35.042320251464844, 14.980032920837402, 131.61093139648438},
                {30.71190071105957, 14.98000717163086, 151.40672302246094},
                {54.079280853271484, 14.980053901672363, 159.50131225585938},
                {65.57428741455078, 14.980043411254883, 144.7776336669922},
                {55.46688461303711, 14.98003101348877, 114.64128875732422},
                {78.28007507324219, 14.980033874511719, 119.36310577392578},
                {39.7011833190918, 14.98002815246582, 40.89662551879883},
                {60.149742126464844, 14.980047225952148, 54.39320373535156},
                {67.0638198852539, 14.980023384094238, 39.698001861572266},
                {84.65721893310547, 14.980010032653809, 37.25113296508789},
                {84.1076431274414, 14.980026245117188, 60.05638122558594},
                {61.61616134643555, 14.980048179626465, 55.39959716796875},
                {114.85828399658203, 14.98000431060791, 62.784671783447266},
                {128.09674072265625, 14.98000717163086, 47.823699951171875},
                {126.91871643066406, 14.979995727539062, -9.971007347106934},
                {124.26566314697266, 14.979997634887695, -28.5522403717041},
                {80.88302612304688, 14.980011940002441, -0.32163047790527344},
                {66.93148040771484, 14.980008125305176, -2.871767520904541},
                {24.020559310913086, 14.980012893676758, -42.56425857543945},
                {-13.330342292785645, 14.980031967163086, -34.542572021484375},
                {-69.19371795654297, 14.980013847351074, -61.66141891479492},
                {-141.8146209716797, 14.626566886901855, -123.69113159179688},
                {-0.7939934730529785, 14.980051040649414, -150.73829650878906},
            }

            for _, coord in ipairs(coordinates) do
                if not _G.TeleportLoopActive then
                    break
                end
                TeleportToCoordinate(coord[1], coord[2], coord[3])
                wait(1) -- Tempo de espera necessário (ajustável)
            end
        end
    end

    -- Função para modificar a velocidade do personagem
    function ModifySpeed(speed)
        _G.CharacterSpeed = speed
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.WalkSpeed = _G.CharacterSpeed
        end
    end

    -- Função para modificar o tamanho do pulo do personagem
    function ModifyJumpPower(jumpPower)
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.JumpPower = jumpPower
        end
    end

    -- Atualiza a velocidade do personagem continuamente
    game:GetService("RunService").RenderStepped:Connect(function()
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.WalkSpeed = _G.CharacterSpeed
        end
    end)

    -- Player Tab
    local PlayerTab = Window:MakeTab({
        Name = "Main Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Seção Principal
    local Section = PlayerTab:AddSection({
        Name = "Main Tab"
    })

    -- Ativação do AutoFarm
    PlayerTab:AddToggle({
        Name = "Farmera",
        Default = false,
        Callback = function(Value)
            _G.AutoFarm = Value
            if _G.AutoFarm then
                AutoFarm()
            end
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "AutoFarm foi " .. (Value and "ativado" or "desativado") .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Adição de uma checkbox toggle ao PlayerTab para ativar/desativar o teletransporte automático para coordenadas
    PlayerTab:AddToggle({
        Name = "Teleporte Automático para Todas as Coordenadas",
        Default = false,
        Callback = function(Value)
            if Value then
                TeleportToAllCoordinates()
            else
                _G.TeleportLoopActive = false
            end
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "Teleporte Automático para Todas as Coordenadas foi " .. (Value and "ativado" or "desativado") .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Seção para Auto Champion (Yens)
    local ChampionSection = PlayerTab:AddSection({
        Name = "Auto Champion"
    })

    -- Ativação do Auto Champion (Yens)
    ChampionSection:AddToggle({
        Name = "Auto Champion (Yens)",
        Default = false,
        Callback = function(Value)
            if Value then
                AutoChampionYens()
            end
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "Auto Champion (Yens) foi " .. (Value and "ativado" or "desativado") .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Ativação do Auto Champion (Gems)
    ChampionSection:AddToggle({
        Name = "Auto Champion (Gems)",
        Default = false,
        Callback = function(Value)
            if Value then
                AutoChampionGems()
            end
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "Auto Champion (Gems) foi " .. (Value and "ativado" or "desativado") .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Player Mod Tab
    local PlayerModTab = Window:MakeTab({
        Name = "Player Mod",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Seção para modificar a velocidade do personagem e o tamanho do pulo
    local PlayerModSection = PlayerModTab:AddSection({
        Name = "Player Mod Section"
    })

    -- Slider para modificar a velocidade do personagem
    PlayerModSection:AddSlider({
        Name = "Speed Power",
        Min = 0,
        Max = 100,
        Default = _G.CharacterSpeed,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "speed",
        Callback = function(speed)
            ModifySpeed(speed)
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "Velocidade do personagem modificada para " .. speed .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Slider para modificar o tamanho do pulo do personagem
    PlayerModSection:AddSlider({
        Name = "Jump Power",
        Min = 0,
        Max = 100,
        Default = 50,
        Color = Color3.fromRGB(255,255,255),
        Increment = 10,
        ValueName = "jumpPower",
        Callback = function(jumpPower)
            ModifyJumpPower(jumpPower)
            OrionLib:MakeNotification({
                Name = "Ação!",
                Content = "Tamanho do pulo do personagem modificado para " .. jumpPower .. ".",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Misc Tab
    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Seção Principal
    local MiscSection = MiscTab:AddSection({
        Name = "Misc Section"
    })

    -- Botão para copiar o link do servidor do Discord
    MiscSection:AddButton({
        Name = "Discord Server Link",
        Callback = function()
            setclipboard("https://discord.gg/4a3SznvyYY")
            OrionLib:MakeNotification({
                Name = "Copiado!",
                Content = "Link do servidor do Discord copiado para a área de transferência.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })

    -- Adicione uma notificação para cada vez que uma checkbox ou botão for ativado/desativado
    local function AddNotification(name, value)
        local action = value and "ativado" or "desativado"
        OrionLib:MakeNotification({
            Name = "Ação!",
            Content = name .. " foi " .. action .. ".",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end

    -- Função para adicionar notificação a um toggle ou botão
    local function AddNotificationToToggle(toggle)
        toggle.Callback = function(value)
            AddNotification(toggle.Name, value)
        end
    end

    -- Adicione notificações para cada toggle/botão na janela "Main Farm"
    for _, toggle in ipairs(PlayerTab:GetToggles()) do
        AddNotificationToToggle(toggle)
    end

    -- Adicione notificações para cada toggle/botão na janela "Player Mod"
    for _, toggle in ipairs(PlayerModTab:GetToggles()) do
        AddNotificationToToggle(toggle)
    end

    -- Adicione notificações para cada toggle/botão na janela "Misc"
    for _, toggle in ipairs(MiscTab:GetToggles()) do
        AddNotificationToToggle(toggle)
    end

    -- Adicione notificações para cada botão na janela "Misc"
    for _, button in ipairs(MiscTab:GetButtons()) do
        button.Callback = function()
            AddNotification(button.Name, true)
        end
    end
end


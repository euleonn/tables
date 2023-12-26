                        best da hood streamable script with most features and has 0 fps drops and has gotten over 5 players star on da hood

                        best da hood streamable for closet cheating and for rage / blatant cheating

                        everything is toggleable and can be edited inside of the script table

                        works on any da hood game / related game ( hood customs, untitled hood, da hood modded, da hood, da downhill, da uphill, Dah hood, duh hood, dap hood, etc )

			the most features inside of one silent aim script


                        best custom resolver
			best autoprediction system
                        frame skip
			bullet tp
			mouse tp
			bullet redirection
			esp
			gun sorter
                        gunfov 
                        most features ever inside of one da hood script
			16 body parts
                        triggerbot
                        trash talk
                        custom anti aim viewer
			normal anti aim viewer
                        custom textures
                        memory spoofer and recv spoofer ( spoofs graphs so it doesnt look like you injected )
                        fastest and most stable macro
                        gunsorting 
			keybind for animations
                        noclip macro
			gui
                        auto 360
                        fake spike
                        auto reload
                        auto mute boombox
                        auto low gfx
			auto remove seats
                        wall check knocked check grabbed check crew check
			anti ground shots
                        XYZ shake and XYZ airshot shake
                        aimassist with easing styles, mouse mode, keyboard mode, hold mode, over 15 features just for aimassist
                        panic mode that will turn everything off
                        crash command that will crash u in a legit way mid pc-checks
                        auto kick if a mod joins your game ( also has a notification mode ) 
                        chat commands to change or toggle features
			


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

script:


getgenv().Vatex = {
    ['Configurations'] = {
        Version = 1.0, -- [ use this to go back to previous versions ( trying to go to a beta version wont work and will instantly blacklist you if you dont have the beta role ) ]
        Key = 'Key_Here', -- [ put key here ]
        Intro = false, -- [ shows an intro when injected ]
        BypassData = false, -- [ bypass cheat detections like adonis and most other anticheats ]
        AutoLowGfx = false, -- [ enables low gfx on inject ]
        MuteBoomBox = true, -- [ disables boomboxes on inject ]
        RemoveSeats = true, -- [ removes seats on inject ]
        GetInformation = true, -- [ shows a notification on how long it took you to inject and how many times youve injected the script ]
        }
    },
    ['Silent'] = {
        Enabled = true, -- [
        Enable_Keybind = true, -- [ determines if it uses a keybind to disable and enable silent aim ]
        KeyBind = 'B', 
	Mode = 'Rage', -- [ legit, rage ]
        Notifications = true -- [ sends a notification when silent is disabled / enabled ]
        
	TargetMode = false, -- [ turn this true if you want to use a 'lock on target' mode instead of fov ]
        TargetMode_CamlockTarget = true, -- [ locks your camera onto target ]
        ForceKeyBind = 'H',
        
	PredictMovement = true, -- [ predects targets movement and shoots infront of them ( use autoprediction if you dont have a good prediction ) ]
        Prediction = 0.11, -- [ the prediction it uses when shooting a target ]
        Part = HumanoidRootPart,
        UseAirPart = false, -- [ turn this true if u want it to hit a different part while target is in the air ]
        AirPart = LowerTorso, -- [ the part it targets while target in in the air ]
        ClosestPart = true, -- [ gets the closest part on a target and uses that ]
        ClosestPoint = true, -- [ gets the closest point on target and uses that ]
        ClosestPointScale = 100, -- [ the scale at closestpoint reaches out on a target ]
        UseWhitelistedParts = false, -- [ makes it so it only hits certain body parts ]
        WhitelistedPart = {'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso'}, -- [ the part(s) it uses ]
        AntiAimViewer = true, -- [ changes mouse position inside of the server to bypass aim viewing ]
        HitChance = 100, -- [ chance that silent aim hits ]
        AirHitChance = 100, -- [ chance that silent aim hits your target while in the air
        
        AntiGroundShots = true, 
        AntiGroundValue = 0.3,
        AntiGroundActivation = -20, -- [ the value it activates at ]

        Custom_AntiAimViewerPoint = { -- [ custom anti aim viewer ]
            Enabled = false,
            RemoteEvent = (function(Pos) 
                local MainEvent = game:GetService('ReplicatedStorage').MainEvent 
                local Args = {
                    [1] = 'UpdateMousePos',
                    [2] = Pos
                }
                return Args, MainEvent
            end)
        },
	['TriggerBot'] = {
        	TriggerBot = true, -- [ shoots AutoPredictionally once locked onto a target ]
        	TriggerBot_HoldMode = true, -- [ only enables while keybind is being held down ]
        	TriggerBot_Delay = 100, -- [ the delay it takes to shoots ( milliseconds ) ]
        	TriggerBotMouseKey = MouseButton3, -- [ mouse bind to enable triggerbot
        	TriggerBot_HotKey = false, -- [ set this to true to use keybord keys instead of mouse keys ]
        	TriggerBotKey = Q, -- [ uses this keybind to enable triggerbot ]
        },
        ['AutoPrediction'] = {
            Enabled = true, -- [ 
            AutoPrediction = false, -- [ determines if you use auto pred or not, if false then it uses whatever prediction you have set in your camlock / silent prediction ]
            RefreshRate = 0.01, -- [ the rate at which it detects your ping (set to 0.01 for the fastest and most accurate autoprediction system ) ]
            p190_200 = 0.1813, 
            p180_190 = 0.1733, 
            p170_180 = 0.1693, 
            p160_170 = 0.1663, 
            p150_160 = 0.1574, 
            p140_150 = 0.1555, 
            p130_140 = 0.15, 
            p120_130 = 0.1411, 
            p110_120 = 0.1344, 
            p100_110 = 0.1315, 
            p90_100 = 0.13, 
            p80_90 = 0.1295, 
            p70_80 = 0.129, 
            p60_70 = 0.125, 
            p50_60 = 0.121, 
            p40_50 = 0.114, 
            p30_40 = 0.11, 
            p20_30 = 0.1, 
            p10_20 = 0.05, 
        },
        ['Fov'] = {
            Visible = false, -- [ if fov circle is showing for silent aim ]
            Method' = 'Mouse', -- [ what position the fov is at (screen makes it where its in the center of your screen ) (mouse, screen) ]
            Filled = false, -- [ if the circle is filled or not ]
            Transparency = 1, -- [ how see through the fov circle is (applies to both filled and not ) ]
            Color = Color3.fromRGB(255, 255, 255), -- [ what color the circle is ]
            Offset = Vector2.new(0, 0)), -- [ circle position and offset from cursor ]
            StickyFov = false, -- [ puts the circle on the target that the silent aim is targetting ]
            Radius = 10 -- [ how big or small the circle is ]
        },
        ['GunFov'] = {
            Enabled = true, -- [ enable or disable gunfov ]
            ['Configurations'] = {
                Fov = true, 
                Range = true, 
                Prediction = false, 
                HitChance = true, 
                AirHitChance = true, 
                Smoothness = false, 
                AirSmoothness = true
            },
            ['Dynamic'] = {
                Enabled = true, -- [ whether it changes the fov circle smoothly or not ]
                Time = 0.5, -- [ how much time it takes to change (slower the smoother ) ]
                EasingStyle = 'Linear', 
                EasingDirection = 'Out' -- [ What Smoothning Method For Method Control Direction
            },
            Far_Activation = math.huge, -- [ keep this at math.huge or at 1/0 which is inf studs ]
            Medium_Activation = 30, -- [ activates at 30 studs ]
            Close_Activation = 15, -- [ activates at 15 studs ]
            
            ['Revolver'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['Double-Barrel SG'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['Shotgun'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['TacticalShotgun'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['SMG'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['Silencer'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['Rifle'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['AR'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            },
            ['AK47'] = {
                ['Fov'] = 19.5,     ['Prediction'] = 0.135,     ['HitChance'] = 100,      ['AirHitChance'] = 100,      ['Smoothness'] = 0.043,     ['AirSmoothness'] = 0.055,
                ['CloseFov'] = 10,  ['ClosePrediction'] = 0.121,['CloseHitChance'] = 100, ['CloseAirHitChance'] = 100, ['CloseSmoothness'] = 0.06, ['CloseAirSmoothness'] = 0.075,
                ['MedFov'] = 6,     ['MedPrediction'] = 0.124,  ['MedHitChance'] = 100,   ['MedAirHitChance'] = 100,   ['MedSmoothness'] = 0.04,   ['MedAirSmoothness'] = 0.065,
                ['FarFov'] = 4,     ['FarPrediction'] = 0.127,  ['FarHitChance'] = 100,   ['FarAirHitChance'] = 100,   ['FarSmoothness'] = 0.03,   ['FarAirSmoothness'] = 0.045,
            }
        }
    },
    ['UniversalCheck'] = {
        Invisible = true, -- [ checks if target is invisible (say a mod viewing you while invisible) ]
        Forcefield = false, -- [ checks if target has a forcefield around them / just spawned in ]
        TargetRespawnCheck = true, -- [ disables camlock when target is dead and about to respawn ]
        PlayerDeathCheck = true, -- [ disables camlock when the player dies ]
        GunOut = false, -- [ camlock only targets a player when a gun / tool is equipped ]
        
        Walls = true, -- [ Checks If There Is Nothing Infront Of The Target
        WallsV2 = false, -- [ Checks If The Velocity Is Predicting Into An Wall
        Friend = true, -- [ Checks If Target Is Your Friend
        Team = false, -- [ Checks If Player Is In the Same Team
        
        CrewCheck = true, -- [ Checks If Target Is In Your Crew
        KoCheck = true, -- [ Checks If Target Is Grabbed Or Knocked
        ReloadCheck = false, -- [ Checks If You Are Realoding
        NoAmmoCheck = false, -- [ Checks If Youre Gun Has 0 Ammo
        
        ['Advanced'] = {
            TargetBots = false, -- [ Makes The Silent And Camlock Target The Bot. RISKY!
            BotPath = 'NPC' -- [ Gets The Folder Path Where The Bots Are And Uses It. In The Current Workspace Folder
        }
    },
    ['PanicMode'] = {
        Enabled = true, -- [ enable the keybind for panicmode ]
        KeyBind = 'P' -- [ the keybind to enable panicmode ]
    },
    ['F9Cleaner'] = {
        Enabled = true, -- [ to enable and disable the keybind for f9cleaner ]
        KeyBind = 'N' -- [ the keybind to enable and disable f9 cleaner ]
    },
    ['FakeSpike'] = {
        Enabled = true, -- [ enable or disable the keybind for fake spike ]
        KeyBind = 'J', -- [ uses this keybind for fake spike ]
        Power = 500, -- [ how much power fake spike uses ]
        ToggleMode = true, -- [ set to false for hold mode ]
        Delay = 4, -- [ how long it takes for ping to go back to normal ]
    },
    ['ModDetection'] = {
        Enabled = true, 
        Delay = 3, 
        Rank = 200, -- [ detects if the users group rank is higher then the number listed ]
        Method = Notification, -- [ notification , kick ]
    },
    ['GunSorting'] = {
        Enabled = true, -- [ enable or disable the GunSorting keybind
        KeyBind = 'L', -- [ always uppercase letters ]
        UseFood = true, -- [ Sorts Also Food
        ['Slots'] = { -- [ max is 10 slots ]
            '[Double-Barrel SG]', -- [ The First Slot Item
            '[Revolver]', -- [ The Second Slot Item
            '[TacticalShotgun]', -- [ The Third Slot Item
            '[Shotgun]', -- [ The Fourth Slot Item
            '[Katana]' -- [ The Fifth Slot Item
        },
    },
    ['MemorySpoofer'] = {
        Enabled = true, -- [ Edits Memory Numbers On Roblox Gui
        Delay = 1, -- [ The RefreshRate On Random Numbers
        Maximum = 980, -- [ The Maximum It Can Generate
        Lowest = 965 -- [ The Lowest It Can Generate 
    },
    ['Macro'] = {
        -- // normal macro
        Speed_Enabled = true, -- [ Enable / Disable Macro 
        Speed_Delay = 1, -- [ The Delay For The Macro (The Higher The Slower)
        Speed_KeyBind = 'T', -- [ Key To Macro
        Speed_HoldMode = true, -- [ Enables While Only Holding The KeyBind
        Speed_MacroAbuse = true, -- [ This Will Bypass Anti Gun Macro
        Speed_ThirdPersonV2 = false, -- [ This Makes The Macro Much Faster. But Its Only Good For People That Has Under 60-
        Speed_Method = 'FirstPerson', -- [ thirdperson, firstperson, shiftlock ]
        
        Lay_Emote = true, -- [ Enable / Disable Lay_Emote Key
        Lay_KeyBind = 'G', -- [ Key To Execute Lay
        Greet_Emote = true, -- [ Enable / Disable Greet_Emote Key
        Greet_Keybind = 'Y', -- [ Key To Execute Greet
        
        Noclip_Macro = true, -- [ Enable / Disable Noclip Key
        Noclip_HoldMode = true, -- [ Enables While Only Holding The Key
        Noclip_KeyBind = 'C', -- [ Key To Enable Macro
        
        -- //
        RotationMode = true, -- [ Enable / Disable Rotation Key
        Degrees = 360, -- [ How Much You Turn
        RotationSpeed = 5, -- [ How Fast You Turn
        Rotation_KeyBind = 'V' -- [ Key To Enable Macro
    },
    ['Desync'] = {
        Enabled = true, -- [ Enable / Disable Desync
        HealthDeActivation = 7, -- [ Disables The Desync When Your Health Is That Low
        UseDesyncKey = true, -- [ Use The KeyBind To Enable / Disable The Desync Desync Key
        DesyncKey = 'X', -- [ Key To Enable / Disable Desync
        HoldMode = false, -- [ Enables While Only Holding The Key
        
        Visualize = {['Enabled'] = true, ['Radius'] = (30), ['Color'] = (Color3.fromRGB(255, 255, 255))}, -- [ Shows An Dot Where The Velocity Is
        Method = 'Vel_StandBy', -- [ Vel_Multi, Custom_Vel, Vel_StandBy, Vel_Under, Vel_Zero) 2 Diffrent Configurations To Change Server Position (Freeze_Pos, Slow_Data)
        Power = 5, -- [ How Much Velocity The Method Is Using. Vel_StandBy, Custom_Vel, Vel_Zero And Server Position Changer Does Not Need This
        
        ['Custom'] = {
            Vel_X = 50, -- [ How Much Power Is On X
            Vel_Y = 50, -- [ How Much Power Is On Y
            Vel_Z = 50 -- [ How Much Power Is On Z
        }
    },
    ['ChatCommands'] = {
        Enabled = true, 

        Silent_Enabled = '$senable', -- [ The Command To Enable / Disable Silent (With false/true)
        Silent_Prediction = '$spred', -- [ The Command To Change Silent Prediction (With Numbers)
        Silent_Fov_Size = '$sfov', -- [ The Command To Change Silent Fov (With Numbers)
        Silent_Fov_Show = '$sshow', -- [ The Command To Change Silent (With false/true)
        Silent_HitChance = '$schance', -- [ The Command To Change Silent HitChance (With Numbers)
        Silent_LegitMode = '$slegit', -- [ The Command To Change Silent LegitMode (With false/true)
        Silent_BlatantMode = '$sblatant', -- [ The Command To Change Silent BlatantMode (With false/true)

        -- [ Camlock ChatCommands
        Camlock_Enabled = '$aenabled', -- [ The Command To Enable / Disable Camlock (With false/true)
        Camlock_Prediction = '$apred', -- [ The Command To Change Camlock Prediction (With Numbers)
        Camlock_Fov_Size = '$afov', -- [ The Command To Change Camlock Fov (With Numbers)
        Camlock_Fov_Show = '$ashow', -- [ The Command To Change Camlock (With false/true)
        Camlock_SmoothX = '$smoothx', -- [ The Command To Change Camlock SmoothNess X Value (With Numbers)
        Camlock_SmoothY = '$smoothy', -- [ The Command To Change Camlock SmoothNess Y Value (With Numbers)
        Camlock_Shake = '$ashake', -- [ The Command To Change Camlock Shake Value (With Numbers)
        
        -- [ Misc ChatCommands
        RejoinServer = 'rejserv', -- [ The Command To Rejoin The Server You Are In
        RandomServer = 'rejoin.', -- [ The Command To Rejoin An Random Server
        
        SaveConfig = 'savecon', -- [ Creates An Txt That Saves The Table. (Example Savecon ConfigName)
        LoadConfig = 'loadcon', -- [ Loads An New Table. (Example loadcon ConfigName)

        CrashMode = '. ', -- [ crash roblox command ]
        CrashMethod = 'Freeze' -- [ method to crash (freeze, shutdown) ]
    },
    ['Esp'] = {
        Enabled = false, -- [ Enable / Disable Esp
        UseEspKeyBind = true, -- [ Enable / Disable EspKey
        EspKey = 'Z', -- [ Key To Enable / Disable Esp
        HoldMode = false, -- [ Enables While Only Holding The Key
        
        TextSize = 16, -- [ how big the text size is ]
        
        Name = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(255, 255, 255))},
        Cheater = {Enabled = true, Suspicious = true, OutLine = true, Color = Color3.fromRGB(255, 0, 0)},
        Box = {Enabled = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(255, 255, 255)},
        
        HealthBar = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(0, 255, 0)), ['HealthColor'] = true},
        HealthText = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(0, 255, 0)), ['HealthColor'] = true},
        
        ArmorBar = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(0, 189, 255))},
        ArmorText = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(0, 189, 255))},
        
        Distance = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(255, 255, 255))},
        Tool = {['Enabled'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(255, 255, 255))},
        Flags = {['Enabled'] = false, ['WalkingState'] = true, ['DesyncState'] = true, ['OutLine'] = true, ['Color'] = (Color3.fromRGB(255, 255, 255))},
        Tracer = {['Enabled'] = false, ['Method'] = ('Mouse'), ['Thickness'] = (1), ['Color'] = (Color3.fromRGB(255, 255, 255))},
        
        CrewColor = {['Enabled'] = true, ['Color'] = (Color3.fromRGB(0, 255, 0))},
        TargetColor = {['Enabled'] = false, ['Color'] = (Color3.fromRGB(255, 0, 0))}
    }
}

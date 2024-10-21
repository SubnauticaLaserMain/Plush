-- print('GG')


-- local API = loadfile('./API - Final Version/API.lua')()()



local a=false


for i = 1, 2 do
    pcall(function()
        local InvService = loadstring([[local Service = {}




Service.Engine = {}


Service.Engine.makeStorage = function()
    local Storage = (function()
        local a,b = pcall(function()
            local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

            if RobloxReplicatedStorage.ClassName then end


            return RobloxReplicatedStorage
        end)


        if a and b then
            return b
        end



        a,b = pcall(function()
            local CoreGui = game:GetService('CoreGui')

            if CoreGui.ClassName then end


            return CoreGui
        end)


        if a and b then
            return b
        end


        a,b = pcall(function()
            local Game = game


            if game and game.ClassName then end


            return Game
        end)

        if a and b then
            return b
        end


        error('Cant find Placement!')
    end)()



    if Storage then
        local L=Instance.new('Folder', Storage)
        L.Name = 'Items'
    end


    return Storage
end

Service.Engine.Get = function()
    local Storage = (function()
        local a,b = pcall(function()
            local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

            if RobloxReplicatedStorage.ClassName then end


            return RobloxReplicatedStorage
        end)


        if a and b then
            return b
        end



        a,b = pcall(function()
            local CoreGui = game:GetService('CoreGui')

            if CoreGui.ClassName then end


            return CoreGui
        end)


        if a and b then
            return b
        end


        a,b = pcall(function()
            local Game = game


            if game and game.ClassName then end


            return Game
        end)

        if a and b then
            return b
        end


        error('Cant find Placement!')
    end)()


    return Storage:FindFirstChild('Items')
end





local i



function Service:addCustomTool(id)
    local Fetch = (function(id)
        return game:GetObjects(id)
    end)(id)
    
    if not i and not Service.Engine.Get() then i = Service.Engine.makeStorage() else i = Service.Engine.Get() end



    if i and not i:FindFirstChild(Fetch[1].Name) then
        -- if not Fetch[1]:IsA('Tool') then local item = Fetch[1]; tool = Instance.new('Tool', i); tool.Name = Fetch[1].Name; for i, v in Fetch[1]:
        Fetch[1].Parent = i
    end


    return Fetch[1]
end



function Service:GiveTool(name)
    local Storage = Service.Engine.Get()


    if not Storage then
        Storage = Service.Engine.makeStorage()
        i = Storage
    end



    if Storage:FindFirstChild(name) then
        local clone = Storage:FindFirstChild(name):Clone()


        clone.Parent = game:GetService('Players').LocalPlayer:WaitForChild('Backpack', 10)


        -- Run Scripts

        return clone
    end

    
    return nil
end






return Service]])()



        Script = {}


        Script.CollisionClone = game:GetService('Players').LocalPlayer.Character:WaitForChild('Collision'):Clone()
        shared.RootPart = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')



        local k=false

        function SpeedBypass()
            if Script.SpeedBypassing or not Script.CollisionClone then return end
            Script.SpeedBypassing = true

            task.spawn(function()
                while k and Script.CollisionClone do
                    if shared.RootPart.Anchored then
                        Script.CollisionClone.Massless = true
                        repeat task.wait() until not shared.RootPart.Anchored
                        task.wait(0.15)
                    else
                        Script.CollisionClone.Massless = not Script.CollisionClone.Massless
                    end
                    task.wait(0.15)
                end

                Script.SpeedBypassing = false
                if Script.CollisionClone then
                    Script.CollisionClone.Massless = true
                end
            end)
        end


        InvService:addCustomTool(116600458345614)



        local toy = InvService:GiveTool('seek plush')
        local toyf


        if a == false then
            InvService:addCustomTool(110377654572944)

            toyf = InvService:GiveTool('FigurePlush')
            a = true
        end




        print(toy)




        toyf.Activated:Connect(function()
            local a,b = pcall(function()
                if not game:GetService('Workspace'):FindFirstChild('CuteSound2') then
                    local K = Instance.new('Sound', game:GetService('Workspace'))
                    K.Volume = 5
                    K.Name = 'CuteSound2'
                    K.SoundId = 'rbxassetid://2118376406'
                end


                game:GetService('Workspace'):WaitForChild('CuteSound2'):Play()
            end)


            if not a then
                warn('ERROR: ' .. tostring(b))
            end
        end)


        toy.Activated:Connect(function()
            k=true
            SpeedBypass()

            while k == true do  
                game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid', 10).WalkSpeed = 22

                task.wait(0.2)
            end


            local Character = game:GetService('Players').LocalPlayer.Character


            if Character:GetAttribute('CanJump') == true then
                Character:SetAttribute('CanJump', nil)
            end


            if not Character:GetAttribute('CanJump') then
                Character:SetAttribute('CanJump', true)
            end


            local a,b = pcall(function()
                if not game:GetService('Workspace'):FindFirstChild('CuteSound') then
                    local K = Instance.new('Sound', game:GetService('Workspace'))
                    K.Volume = 5
                    K.SoundId = 'rbxassetid://99009159094247'
                    K.Name = 'CuteSound'
                end


                game:GetService('Workspace'):WaitForChild('CuteSound'):Play()
            end)


            if not a then
                warn('ERROR: ' .. tostring(b))
            end
        end)



        --API.Engine.MakeElevator(API.ElevatorTypes[1], {
        --   'GoldSpawnMore',
        --   'GoldSpawnLess',
        --    'RetroMode'
        --})


        --print(game.Players.LocalPlayer.PlayerGui.Respawn.Respawn.Respawn.Visible)

        -- loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    end)
end

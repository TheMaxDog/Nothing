local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local MainWindow = library:CreateWindow("      Nerd Hack ~ V1")

local EspFolder = MainWindow:CreateFolder("ESP")

_G.DoorEsp = false
_G.DoorsThatGotEspTable = {}
_G.KeyEsp = false
_G.LeverEsp = false
_G.BookEsp = false
_G.BreakerEsp = false
_G.SnareEsp = false
_G.EntityEsp = false
_G.GuideLines = false

--GuideLines--

local player = game.Players.LocalPlayer
local rootpart = player.Character.HumanoidRootPart
local doorbeam = Instance.new("Beam")
local newcolorsequnce = ColorSequence.new(Color3.new(0, 1, 0)) 
doorbeam.Color = newcolorsequnce
doorbeam.Name = "DoorsLine"
doorbeam.Width0 = 0.03
doorbeam.Width1 = 0.03
doorbeam.LightEmission = 1
doorbeam.Parent = game.Workspace
doorbeam.FaceCamera = true
doorbeam.Attachment0 = rootpart.RootRigAttachment

local keybeam = Instance.new("Beam")
local newcolorsequnce = ColorSequence.new(Color3.new(255, 0, 191)) 
keybeam.Color = newcolorsequnce
keybeam.Name = "KeysLine"
keybeam.Width0 = 0.03
keybeam.Width1 = 0.03
keybeam.LightEmission = 1
keybeam.Parent = game.Workspace
keybeam.FaceCamera = true
keybeam.Attachment0 = rootpart.RootRigAttachment

local leverbeam = Instance.new("Beam")
local newcolorsequnce = ColorSequence.new(Color3.new(0, 0, 255)) 
leverbeam.Color = newcolorsequnce
leverbeam.Name = "LeversLine"
leverbeam.Width0 = 0.03
leverbeam.Width1 = 0.03
leverbeam.LightEmission = 1
leverbeam.Parent = game.Workspace
leverbeam.FaceCamera = true
leverbeam.Attachment0 = rootpart.RootRigAttachment

local bookbeam = Instance.new("Beam")
local newcolorsequnce = ColorSequence.new(Color3.new(255, 176, 0)) 
bookbeam.Color = newcolorsequnce
bookbeam.Name = "BooksLine"
bookbeam.Width0 = 0.03
bookbeam.Width1 = 0.03
bookbeam.LightEmission = 1
bookbeam.Parent = game.Workspace
bookbeam.FaceCamera = true
bookbeam.Attachment0 = rootpart.RootRigAttachment

local breakerbeam = Instance.new("Beam")
local newcolorsequnce = ColorSequence.new(Color3.new(0, 255, 255)) 
breakerbeam.Color = newcolorsequnce
breakerbeam.Name = "BreakersLine"
breakerbeam.Width0 = 0.03
breakerbeam.Width1 = 0.03
breakerbeam.LightEmission = 1
breakerbeam.Parent = game.Workspace
breakerbeam.FaceCamera = true
breakerbeam.Attachment0 = rootpart.RootRigAttachment

--GuideLines--

EspFolder:Toggle("Doors",function(bool)
    _G.DoorEsp = bool
end)

EspFolder:Toggle("Keys",function(bool)
    _G.KeyEsp = bool
end)

EspFolder:Toggle("Levers",function(bool)
    _G.LeverEsp = bool
end)

EspFolder:Toggle("Books",function(bool)
    _G.BookEsp = bool
end)

EspFolder:Toggle("Breakers",function(bool)
    _G.BreakerEsp = bool
end)

EspFolder:Toggle("Snares(Traps)",function(bool)
    _G.SnareEsp = bool
end)

EspFolder:Toggle("Entities",function(bool)
    _G.EntityEsp = bool
end)

EspFolder:Toggle("Guiding Lines",function(bool)
    _G.GuideLines = bool
end)
--------------------
--------------------
local AutoFolder = MainWindow:CreateFolder("Auto")

_G.AutoLoot = false
_G.AutoEntityNotifier = false
_G.Sent = false
_G.SentAmbush = false
_G.AutoHide = false
_G.AlreadyHide = false

AutoFolder:Toggle("Auto Loot ",function(bool)
    _G.AutoLoot = bool
end)

AutoFolder:Toggle("Auto Notify Entities ",function(bool)
    _G.AutoEntityNotifier = bool
end)

AutoFolder:Toggle("Auto Hide Rush(Beta) ",function(bool)
    _G.AutoHide = bool
end)

local OtherFolder = MainWindow:CreateFolder("Other")

_G.FullBright = false
_G.SpeedBoost = false
_G.RemoveSeekStuff = false
_G.RemoveGates = false
_G.RemovePaintingGates = false
_G.RemoveSkeletonDoor = false
_G.RemoveSnares = false 

OtherFolder:Toggle("FullBright ",function(bool)
    _G.FullBright = bool
end)

OtherFolder:Toggle("Speed Boost ",function(bool)
    _G.SpeedBoost = bool
end)


OtherFolder:Toggle("Remove Seek Arms/Fire ",function(bool)
    _G.RemoveSeekStuff = bool
end)

OtherFolder:Toggle("Remove Lever Gates ",function(bool)
    _G.RemoveGates = bool
end)

OtherFolder:Toggle("Remove Painting Gates ",function(bool)
    _G.RemovePaintingGates = bool
end)

OtherFolder:Toggle("Remove SkeletonDoor ",function(bool)
    _G.RemoveSkeletonDoor = bool
end)

OtherFolder:Toggle("Remove Snares ",function(bool)
    _G.RemoveSnares = bool
end)

OtherFolder:Button("Remove Screech ",function()
    local rs = game:GetService("ReplicatedStorage")
    local entityInfo = rs:FindFirstChild("EntityInfo")
    if entityInfo then
        local screech = entityInfo:FindFirstChild("Screech")
        if screech then
            screech:Destroy()
        end
    end
end)
OtherFolder:Button("Remove HeartBeat ",function()
    local rs = game:GetService("ReplicatedStorage")
    local entityInfo = rs:FindFirstChild("EntityInfo")
    if entityInfo then
        local heartbeat = entityInfo:FindFirstChild("ClutchHeartbeat")
        if heartbeat then
            heartbeat:Destroy()
        end
    end
end)

local InfoFolder = MainWindow:CreateFolder("Info/Developer")

InfoFolder:Label("Script Was Made By Nerd ",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
}) 

InfoFolder:Label(" Discord : NeRD#0950 ",{
    TextSize = 23; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
}) 

InfoFolder:Label("Remove Gates/SkeletonDoor Works but it lags ",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

InfoFolder:Label("Just try to pass until you get through ",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

player = game.Players.LocalPlayer
while wait() do
    if _G.DoorEsp == true then
        for i = 0,100 do
            local inum = tostring(i)
            local room = game.Workspace.CurrentRooms:FindFirstChild(inum)
            local check = game.Workspace:FindFirstChild("Dooresp"..i)
            local anothercheck = true
            local numtocheck = i
            for f,num in pairs(_G.DoorsThatGotEspTable) do
                if num == numtocheck then
                    anothercheck = false
                end
            end
            if room and not check and anothercheck == true then
                table.insert(_G.DoorsThatGotEspTable, i)
                local roomexit = room:WaitForChild("RoomExit")
                local part = Instance.new("Part")
                part.Name = ("Dooresp"..i)
                part.Parent = game.Workspace
                part.CFrame = roomexit.CFrame + Vector3.new(0, 2, 0)
                part.Anchored = true
                part.Transparency = 1
                part.CanCollide = false
                local doorattachment = Instance.new("Attachment")
                doorattachment.Name = "Attachment"
                doorattachment.Parent = part
                local billboard = Instance.new("BillboardGui")
                billboard.AlwaysOnTop = true
                billboard.Parent = part
                billboard.Size = UDim2.new(0,200,0,50)
                local textlabel = Instance.new("TextLabel")
                textlabel.Parent = billboard
                textlabel.Text = "Door"
                textlabel.Size = UDim2.new(0,200,0,50)
                textlabel.TextSize = 35
                textlabel.Font = Enum.Font.Oswald
                textlabel.BackgroundTransparency = 1
                textlabel.TextColor = BrickColor.new("Lime green")
                local valforcheck = i-3
                local secondcheck = game.Workspace:FindFirstChild("Dooresp"..valforcheck)
                if secondcheck then
                    secondcheck:Destroy()
                end
            end
        end
    elseif _G.DoorEsp == false then
        _G.DoorsThatGotEspTable = {}
        for i = 0,100 do
            local inum = tostring(i)
            local check = game.Workspace:FindFirstChild("Dooresp"..i)
            if check then
                check:Destroy()
            end
        end
    end
    if _G.KeyEsp == true then
        local lastroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        if lastroom then  
            local lastAssets = lastroom:WaitForChild("Assets")
            local key = lastAssets:WaitForChild("ElectricalKeyObtain").Hitbox
            local keycheck = key:FindFirstChild("BillboardGui")
            if not keycheck then
                local billboard = Instance.new("BillboardGui")
                billboard.AlwaysOnTop = true
                billboard.Name = "BillboardGui"
                billboard.Parent = key
                billboard.Size = UDim2.new(0,200,0,50)
                local textlabel = Instance.new("TextLabel")
                textlabel.Parent = billboard
                textlabel.Text = "Key"
                textlabel.Size = UDim2.new(0,200,0,50)
                textlabel.TextSize = 20
                textlabel.Font = Enum.Font.Oswald
                textlabel.BackgroundTransparency = 1
                textlabel.TextColor = BrickColor.new("Hot pink")
            end
        end
        for i = 1,100 do
            local inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms[stringroomnum]
        local assets = currentroom:FindFirstChild("Assets")
        if assets then
            local keyobtain = assets:FindFirstChild("KeyObtain")
            if keyobtain then
                local keyparts = keyobtain:GetDescendants()
                for i,part in pairs(keyparts) do
                    local checkfor = part:FindFirstChild("BillboardGui")
                    if part.Name == "Key" and not checkfor then 
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = "BillboardGui"
                        billboard.AlwaysOnTop = true
                        billboard.Parent = part
                        billboard.Size = UDim2.new(0,200,0,50)
                        local textlabel = Instance.new("TextLabel")
                        textlabel.Parent = billboard
                        textlabel.Text = "Key"
                        textlabel.Size = UDim2.new(0,200,0,50)
                        textlabel.TextSize = 20
                        textlabel.Font = Enum.Font.Oswald
                        textlabel.BackgroundTransparency = 1
                        textlabel.TextColor = BrickColor.new("Hot pink")
                    end
                    if part.Name == "Key" and _G.GuideLines == true then
                        game.Workspace.KeysLine.Attachment1 = part.Attachment
                    end
				end
			end
		end
        for ii,roomchild in pairs(currentroom:GetChildren()) do
            if roomchild.Name == "Closet" then
                local checkforcloset = roomchild:FindFirstChild("Dresser")
                if checkforcloset then
                    local closetdesser = checkforcloset
                    for iii,closetdesserchild in pairs (closetdesser:GetChildren()) do
                        if closetdesserchild.Name == "DrawerContainer" then 
                            local ClosetDrawer = closetdesserchild
                            for iiii,closetdrawerchild in pairs(ClosetDrawer:GetChildren()) do
                                if closetdrawerchild.Name == "KeyObtain" then
                                    keyobtain = closetdrawerchild
                                    local keyparts = keyobtain:GetDescendants()
                                    for ic,cpart in pairs(keyparts) do
                                        local checkfor = cpart:FindFirstChild("BillboardGui")
                                        if cpart.Name == "Key" and not checkfor then 
                                            local billboard = Instance.new("BillboardGui")
                                            billboard.AlwaysOnTop = true
                                            billboard.Parent = KeyespPart
                                            billboard.Size = UDim2.new(0,200,0,50)
                                            billboard.Name = "BillboardGui"
                                            local textlabel = Instance.new("TextLabel")
                                            textlabel.Parent = cpart
                                            textlabel.Text = "Key"
                                            textlabel.Size = UDim2.new(0,200,0,50)
                                            textlabel.TextSize = 20
                                            textlabel.Font = Enum.Font.Oswald
                                            textlabel.BackgroundTransparency = 1
                                            textlabel.TextColor = BrickColor.new("Hot pink")
                                        end
                                        if cpart.Name == "Key" and _G.GuideLines == true then
                                            game.Workspace.KeysLine.Attachment1 = cpart.Attachment
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
			for i,child in pairs(assets:GetChildren()) do 
				if child.Name == "Table" or child.Name == "Dresser" or child.Name == "Rolltop_Desk" then
					local roomtable = child
					for f,anotherchild in pairs(roomtable:GetChildren()) do
						if anotherchild.Name == "DrawerContainer" then
							local Drawer = anotherchild
							for b,thirdchild in pairs(Drawer:GetChildren()) do
								if thirdchild.Name == "KeyObtain" then
									keyobtain = thirdchild
									local keyparts = keyobtain:GetDescendants()
									for i,part in pairs(keyparts) do
                                        local checkfor = part:FindFirstChild("BillboardGui")
										if part.Name == "Key" and not checkfor then 
											local billboard = Instance.new("BillboardGui")
											billboard.AlwaysOnTop = true
											billboard.Parent = part
											billboard.Size = UDim2.new(0,200,0,50)
                                            billboard.Name = "BillboardGui"
											local textlabel = Instance.new("TextLabel")
											textlabel.Parent = billboard
											textlabel.Text = "Key"
											textlabel.Size = UDim2.new(0,200,0,50)
											textlabel.TextSize = 20
											textlabel.Font = Enum.Font.Oswald
											textlabel.BackgroundTransparency = 1
											textlabel.TextColor = BrickColor.new("Hot pink")
										end
                                        if part.Name == "Key" and _G.GuideLines == true then
                                            game.Workspace.KeysLine.Attachment1 = part.Attachment
                                        end
									end
								end
							end
						end
					end
				end
			end
		end
    elseif _G.KeyEsp == false then
        local lastroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        if lastroom then  
            local lastAssets = lastroom:WaitForChild("Assets")
            local key = lastAssets:WaitForChild("ElectricalKeyObtain").Hitbox
            local keycheck = key:FindFirstChild("BillboardGui")
            if keycheck then
                keycheck:Destroy()
            end
        end
        for i = 1,100 do
            local inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms[stringroomnum]
        local assets = currentroom:FindFirstChild("Assets")
        game.Workspace.KeysLine.Attachment1 = nil
        if assets then
            local keyobtain = assets:FindFirstChild("KeyObtain")
            if keyobtain then
                for ik,keychild in pairs(keyobtain:GetDescendants()) do
                    if keychild.Name == "Key" then
                    	local checkfor = keychild:FindFirstChild("BillboardGui")
                    	if checkfor then
                        	checkfor:Destroy()
						end
                    end
                end
            end
        end
        for ii,roomchild in pairs(currentroom:GetChildren()) do
            if roomchild.Name == "Closet" then
                local checkforcloset = roomchild:FindFirstChild("Dresser")
                if checkforcloset then
                    local closetdesser = checkforcloset
                    for iii,closetdesserchild in pairs (closetdesser:GetChildren()) do
                        if closetdesserchild.Name == "DrawerContainer" then 
                            local ClosetDrawer = closetdesserchild
                            for iiii,closetdrawerchild in pairs(ClosetDrawer:GetChildren()) do
                                if closetdrawerchild.Name == "KeyObtain" then
                                    keyobtain = closetdrawerchild
                                    local keyparts = keyobtain:GetDescendants()
                                    for ic,cpart in pairs(keyparts) do
                                        local checkfor = cpart:FindFirstChild("BillboardGui")
                                        if cpart.Name == "Key" and checkfor then
                                            cpart.BillboardGui:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        for i,child in pairs(assets:GetChildren()) do 
			if child.Name == "Table" or child.Name == "Dresser" or child.Name == "Rolltop_Desk" then
				local roomtable = child
				for f,anotherchild in pairs(roomtable:GetChildren()) do
					if anotherchild.Name == "DrawerContainer" then
						local Drawer = anotherchild
						for b,thirdchild in pairs(Drawer:GetChildren()) do
							if thirdchild.Name == "KeyObtain" then
								keyobtain = thirdchild
								local keyparts = keyobtain:GetDescendants()
								for i,part in pairs(keyparts) do
                                    local checkfor = part:FindFirstChild("BillboardGui")
									if part.Name == "Key" and checkfor then
                                        checkfor:Destroy()
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if _G.LeverEsp == true then
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local checkforlastroomnum = roomnumber - 1
        local checkstringroomnum = tostring(checkforlastroomnum)
        local checkforlastroom = game.Workspace:FindFirstChild("LeverEsp"..checkstringroomnum)
        if checkforlastroom then
            checkforlastroom:Destroy()
        end
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms[stringroomnum]
        local assets = currentroom:FindFirstChild("Assets")
        local checkifitsalready = game.Workspace:FindFirstChild("LeverEsp"..stringroomnum)
        if assets and not checkifitsalready  then
            for i,child in pairs(assets:GetChildren()) do
                if child.Name == "LeverForGate" then
                    local leverparts = child:GetDescendants()
                    for f,anotherchild in pairs(leverparts) do
                        local realleverparts = anotherchild:GetDescendants()
                        for ff,thirdchild in pairs(realleverparts) do
                            if thirdchild.Name == "Handle" then
                                local LeverespPart = Instance.new("Part")
                                LeverespPart.Parent = game.Workspace
                                LeverespPart.Name = ("LeverEsp"..stringroomnum)
                                LeverespPart.Transparency = 1
                                LeverespPart.CFrame = thirdchild.CFrame
                                LeverespPart.Anchored = true
                                LeverespPart.CanCollide = false
                                local leverattachment = Instance.new("Attachment")
                                leverattachment.Name = "Attachment"
                                leverattachment.Parent = LeverespPart
                                local billboard = Instance.new("BillboardGui")
                                billboard.AlwaysOnTop = true
                                billboard.Parent = LeverespPart
                                billboard.Size = UDim2.new(0,200,0,50)
                                local textlabel = Instance.new("TextLabel")
                                textlabel.Parent = billboard
                                textlabel.Text = "Lever"
                                textlabel.Size = UDim2.new(0,200,0,50)
                                textlabel.TextSize = 20
                                textlabel.Font = Enum.Font.Oswald
                                textlabel.BackgroundTransparency = 1
                                textlabel.TextColor = BrickColor.new("Really blue")
                            end
                        end
                    end
                end
            end
        end
    elseif _G.LeverEsp == false then
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace:FindFirstChild("LeverEsp"..inum)
            if check then
                check:Destroy()
            end
        end
    end
    if _G.BookEsp == true then 
        local room = game.Workspace.CurrentRooms:FindFirstChild("50")
        local checkforafterroom = game.Workspace.CurrentRooms:FindFirstChild("52")
        if room and not checkforafterroom then
            assets = room:WaitForChild("Assets")
            if assets then
                for i,child in pairs(assets:GetChildren()) do
                    if child.Name == "Super Cool Bookshelf With Hint Book" then
                        local bookshelfs = child
                        local bookparts = bookshelfs:GetDescendants()
                        for f,anotherchild in pairs(bookparts) do
                            local check = anotherchild:FindFirstChild("BillboardGui")
                            local livehint = bookshelfs:FindFirstChild("LiveHintBook")
                            if anotherchild.Name == "HintBook" and not check and livehint then
                                local hintbook = anotherchild
                                local billboard = Instance.new("BillboardGui")
                                billboard.Name = "BillboardGui"
                                billboard.AlwaysOnTop = true
                                billboard.Parent = hintbook
                                billboard.Size = UDim2.new(0,200,0,50)
                                local bookattachment = Instance.new("Attachment")
                                bookattachment.Name = "Attachment"
                                bookattachment.Parent = hintbook
                                local textlabel = Instance.new("TextLabel")
                                textlabel.Parent = billboard
                                textlabel.Text = "Book"
                                textlabel.Size = UDim2.new(0,200,0,50)
                                textlabel.TextSize = 20
                                textlabel.Font = Enum.Font.Oswald
                                textlabel.BackgroundTransparency = 1
                                textlabel.TextColor = BrickColor.new("Deep orange")
                            elseif anotherchild.Name == "HintBook" and check and not livehint then
                                check:Destroy()
                                if anotherchild:FindFirstChild("Attachment") then
                                    anotherchild.Attachment:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
    elseif _G.BookEsp == false then 
        game.Workspace.BooksLine.Attachment1 = nil
        local room = game.Workspace.CurrentRooms:FindFirstChild("50")
        if room then
            assets = room:WaitForChild("Assets")
            if assets then
                for i,child in pairs(assets:GetChildren()) do
                    if child.Name == "Super Cool Bookshelf With Hint Book" then
                        local bookshelfs = child
                        local bookparts = bookshelfs:GetDescendants()
                        for f,anotherchild in pairs(bookparts) do
                            local check = anotherchild:FindFirstChild("BillboardGui")
                            if anotherchild.Name == "HintBook" and check then
                                check:Destroy()
                            end
                        end
                    end
                end
            end
        end
	end
    if _G.BreakerEsp == true then
        local lastroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        if lastroom then
            for i,child in pairs(lastroom:GetChildren()) do
                if child.Name == "LiveBreakerPolePickup" then
                    local mainbreaker = child:FindFirstChild("Base")
                    if mainbreaker then
                        espbrcheck = mainbreaker:FindFirstChild("BillboardGui")
                    end
                    if not espbrcheck and mainbreaker then
                        local billboard = Instance.new("BillboardGui")
                        billboard.AlwaysOnTop = true
                        billboard.Name = "BillboardGui"
                        billboard.Parent = mainbreaker
                        billboard.Size = UDim2.new(0,200,0,50)
                        local braekerattachment = Instance.new("Attachment")
                        braekerattachment.Name = "Attachment"
                        braekerattachment.Parent = mainbreaker 
                        local textlabel = Instance.new("TextLabel")
                        textlabel.Parent = billboard
                        textlabel.Text = "Breaker"
                        textlabel.Size = UDim2.new(0,200,0,50)
                        textlabel.TextSize = 20
                        textlabel.Font = Enum.Font.Oswald
                        textlabel.BackgroundTransparency = 1
                        textlabel.TextColor = BrickColor.new("Cyan")
                    elseif espbrcheck and mainbreaker and _G.GuideLines == true and game.Workspace.BreakersLine.Attachment1 ~= mainbreaker.Attachment then
                        game.Workspace.BreakersLine.Attachment1 = mainbreaker.Attachment
                    end
                end
            end
        end
    elseif _G.BreakerEsp == false then
        local lastroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        if lastroom then
            for i,child in pairs(lastroom:GetChildren()) do
                if child.Name == "LiveBreakerPolePickup" then
                    local mainbreaker = child:FindFirstChild("Base")
                    if mainbreaker then
                        espbrrcheck = mainbreaker:FindFirstChild("BillboardGui")
                    end
                    if espbrrcheck then
                        espbrrcheck:Destroy()
                    end
                    if mainbreaker then
                        local checkforattachmentbeaker = mainbreaker:FindFirstChild("Attachment")
                        if checkforattachmentbeaker then
                            mainbreaker.Attachment:Destroy()
                        end
                    end
                end
            end
        end
    end
    if _G.SnareEsp == true then
        for i,snareroom in pairs(game.Workspace.CurrentRooms:GetChildren()) do
            local assets = snareroom:FindFirstChild("Assets")
            if assets then
                for ii,assetchild in pairs(assets:GetChildren()) do
                    if assetchild.Name == "Snare" then
                        local snare = assetchild
                        local snareparts = snare:GetDescendants()
                        for i,part in pairs(snareparts) do
                            local checksnare = part:FindFirstChild("BillboardGui")
                            if part.Name == "Base" and not checksnare then 
                                local billboard = Instance.new("BillboardGui")
                                billboard.Name = "BillboardGui"
                                billboard.AlwaysOnTop = true
                                billboard.Parent = part
                                billboard.Size = UDim2.new(0,200,0,50)
                                local textlabel = Instance.new("TextLabel")
                                textlabel.Parent = billboard
                                textlabel.Text = "Snare"
                                textlabel.Size = UDim2.new(0,200,0,50)
                                textlabel.TextSize = 20
                                textlabel.Font = Enum.Font.SourceSansBold
                                textlabel.BackgroundTransparency = 1
                                textlabel.TextColor = BrickColor.New("Really red")
                            end
                        end
                    end
                end
            end
        end
    elseif _G.SnareEsp == false then
        for i,snareroom in pairs(game.Workspace.CurrentRooms:GetChildren()) do
            local assets = snareroom:FindFirstChild("Assets")
            if assets then
                for ii,assetchild in pairs(assets:GetChildren()) do
                    if assetchild.Name == "Snare" then
                        local snare = assetchild
                        local snareparts = snare:GetDescendants()
                        for i,part in pairs(snareparts) do
                            local checksnare = part:FindFirstChild("BillboardGui")
                            if part.Name == "Base" and checksnare then 
                                checksnare:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
    if _G.EntityEsp == true then
        local figureroom = game.Workspace.CurrentRooms:FindFirstChild("50")
        if not figureroom then
            figureroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        end
        local rush = game.Workspace:FindFirstChild("RushMoving")
        local ambush = game.Workspace:FindFirstChild("AmbushMoving")
        local checkforafterroom = game.Workspace.CurrentRooms:FindFirstChild("52")
        if figureroom and not checkforafterroom then 
            local figure = figureroom:WaitForChild("FigureSetup")
            local figuretorso = figure:WaitForChild("FigureRagdoll"):WaitForChild("Torso")
            local checkforbillboard = figuretorso:FindFirstChild("BillboardGui")
            if not checkforbillboard then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "BillboardGui"
                billboard.AlwaysOnTop = true
                billboard.Parent = figuretorso
                billboard.Size = UDim2.new(0,200,0,50)
                local textlabel = Instance.new("TextLabel")
                textlabel.Parent = billboard
                textlabel.Text = "FIGURE"
                textlabel.Size = UDim2.new(0,200,0,50)
                textlabel.TextSize = 35
                textlabel.Font = Enum.Font.Oswald
                textlabel.Font = Enum.Font.SourceSansBold
                textlabel.BackgroundTransparency = 1
                textlabel.TextColor = BrickColor.new("Really red")
            end
        end
        if rush then
            local rushbody = rush:WaitForChild("RushNew")
            local checkforbillboard = rushbody:FindFirstChild("BillboardGui")
            if not checkforbillboard then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "BillboardGui"
                billboard.AlwaysOnTop = true
                billboard.Parent = rushbody
                billboard.Size = UDim2.new(0,200,0,50)
                local textlabel = Instance.new("TextLabel")
                textlabel.Parent = billboard
                textlabel.Text = "RUSH"
                textlabel.Size = UDim2.new(0,200,0,50)
                textlabel.TextSize = 35
                textlabel.Font = Enum.Font.SourceSansBold
                textlabel.BackgroundTransparency = 1
                textlabel.TextColor = BrickColor.new("Really red")
            end
        end
        if ambush then
            local ambushbody = ambush:WaitForChild("RushNew")
            local checkforbillboard = ambushbody:FindFirstChild("BillboardGui")
            if not checkforbillboard then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "BillboardGui"
                billboard.AlwaysOnTop = true
                billboard.Parent = ambushbody
                billboard.Size = UDim2.new(0,200,0,50)
                local textlabel = Instance.new("TextLabel")
                textlabel.Parent = billboard
                textlabel.Text = "AMBUSH"
                textlabel.Size = UDim2.new(0,200,0,50)
                textlabel.TextSize = 35
                textlabel.Font = Enum.Font.SourceSansBold
                textlabel.BackgroundTransparency = 1
                textlabel.TextColor = BrickColor.new("Really red")
            end
        end
    elseif _G.EntityEsp == false then
        local figureroom = game.Workspace.CurrentRooms:FindFirstChild("50")
        if not figureroom then
            figureroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        end
        local rush = game.Workspace:FindFirstChild("RushMoving")
        if figureroom then 
            local figure = figureroom:WaitForChild("FigureSetup")
            local figuretorso = figure.FigureRagdoll:WaitForChild("Torso")
            local checkforbillboard = figuretorso:FindFirstChild("BillboardGui")
            if checkforbillboard then
                checkforbillboard:Destroy()
            end
        end
        if rush then
            local rushbody = rush:WaitForChild("RushNew")
            local checkforbillboard = rushbody:FindFirstChild("BillboardGui")
            if checkforbillboard then 
                checkforbillboard:Destroy()
            end
        end
    end
    if _G.GuideLines == true then
        local rootpart = player.Character.HumanoidRootPart
        for i = 1,100 do
            local inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnumber = tostring(roomnumber)
        local currentdoor = game.Workspace:FindFirstChild("Dooresp"..stringroomnumber)
        local currentlever = game.Workspace:FindFirstChild("LeverEsp"..stringroomnumber)
        if roomnumber == 99 then
            game.Workspace.DoorsLine.Attachment0 = nil
        end
        if currentdoor then
            game.Workspace.DoorsLine.Attachment1 = currentdoor.Attachment
        end
        if currentlever then
            game.Workspace.LeversLine.Attachment1 = currentlever.Attachment
        end
        local booksroom = game.Workspace.CurrentRooms:FindFirstChild("50")
        local afterbookroom = game.Workspace.CurrentRooms:FindFirstChild("52")
        local closethintbook
        local closethintbookdistance = math.huge
        local lastroom = game.Workspace.CurrentRooms:FindFirstChild("100")
        local closetbreaker
        local closetbreakerdistance = math.huge
        if booksroom and not afterbookroom then
            assets = booksroom:WaitForChild("Assets")
            if assets then
                for i,child in pairs(assets:GetChildren()) do
                    if child.Name == "Super Cool Bookshelf With Hint Book" then
                        local bookshelfs = child
                        local bookparts = bookshelfs:GetDescendants()
                        for f,anotherchild in pairs(bookparts) do
                            local livehint = bookshelfs:FindFirstChild("LiveHintBook")
                            if anotherchild.Name == "HintBook" and livehint then
                                if (rootpart.Position - anotherchild.Position).Magnitude <= closethintbookdistance then
                                    closethintbookdistance = (rootpart.Position - anotherchild.Position).Magnitude
                                    closethintbook = anotherchild
                                end
                            end
                        end
                    end
                end
                if closethintbook then
                    if closethintbook:FindFirstChild("Attachment") then
                        game.Workspace.BooksLine.Attachment1 = closethintbook.Attachment
                    end
                end
            end
        end
        if lastroom then
            for i,child in pairs(lastroom:GetChildren()) do
                if child.Name == "LiveBreakerPolePickup" then
                    local mainbreaker = child:FindFirstChild("Base")
                    if mainbreaker then
                        local check = mainbreaker:FindFirstChild("BillboardGui")
                        if check then
                            if (rootpart.Position - mainbreaker.Position).Magnitude <= closetbreakerdistance then
                                closetbreakerdistance = (rootpart.Position - mainbreaker.Position).Magnitude
                                closetbreaker = mainbreaker
                            end
                        end
                    end
                end
            end
            if closetbreaker then
                if closetbreaker:FindFirstChild("Attachment") then
                    game.Workspace.BreakersLine.Attachment1 = closetbreaker.Attachment
                end
            end
            local lastAssets = lastroom:FindFirstChild("Assets")
            if lastAssets then
                local key = lastAssets:FindFirstChild("ElectricalKeyObtain").Hitbox
                if key then
                    local keycheck = key:FindFirstChild("BillboardGui") 
                    if keycheck then
                        local checkforlastattachment = key:FindFirstChild("Attachment")
                        if not checkforlastattachment then
                            local lastattachment = Instance.new("Attachment")
                            lastattachment.Name = "Attachment"
                            lastattachment.Parent = key
                            game.Workspace.KeysLine.Attachment1 = lastattachment
                        end
                    end
                end 
            end
        end
    elseif _G.GuideLines == false then
        game.Workspace.DoorsLine.Attachment1 = nil
        game.Workspace.KeysLine.Attachment1 = nil
        game.Workspace.LeversLine.Attachment1 = nil
        game.Workspace.BooksLine.Attachment1 = nil
        game.Workspace.BreakersLine.Attachment1 = nil
    end
    if _G.AutoLoot == true then
        local character = player.Character
        if character then
            local rootpart = character.HumanoidRootPart
            for i = 1,100 do
                inum = tostring(i)
                local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
                if check then
                    storednumber = inum
                end
            end
            local roomnumber = storednumber - 1
            local stringroomnum = tostring(roomnumber)
            local beforeroom = storednumber - 2
            if beforeroom < 0 then
                beforeroom = 0
            end
            local stringbeforeroomnum = tostring(beforeroom)
            local currentroom = game.Workspace.CurrentRooms[stringroomnum]
            local beforeroom = game.Workspace.CurrentRooms[stringbeforeroomnum]
            local firstcheck = beforeroom:FindFirstChild("Assets")
            local secondcheck = currentroom:FindFirstChild("Assets")
            if firstcheck and secondcheck then
                local roomstable = {firstcheck,secondcheck}
                for is,roomassets in pairs(roomstable) do
                    local assets = roomassets
                    for i,child in pairs(assets:GetChildren()) do 
                        if child.Name == "GoldPile" then
                            local checkfordirectgoldpile = child
                            local directgoldhitbox = checkfordirectgoldpile:WaitForChild("Hitbox")
                            local directgoldprompt = checkfordirectgoldpile:WaitForChild("LootPrompt")
                            local distance = (rootpart.Position-directgoldhitbox.Position).Magnitude
                            if distance <= 14 then
                                fireproximityprompt(directgoldprompt)
                            end
                        end
                        if child.Name == "Dresser" or "Table" or "Rolltop_Desk" then
                            local checkforgoldpile = child:FindFirstChild("GoldPile")
                            if checkforgoldpile then
                                local goldhitbox = checkforgoldpile:WaitForChild("Hitbox")
                                local goldprompt = checkforgoldpile:WaitForChild("LootPrompt")
                                local distance = (rootpart.Position-goldhitbox.Position).Magnitude
                                if distance <= 14 then
                                    fireproximityprompt(goldprompt)
                                end
                            end
                            local checkformain = child:FindFirstChild("Main") or child:FindFirstChild("Base")
                            if checkformain then
                                local distance = (rootpart.Position-checkformain.Position).Magnitude
                                if distance <= 14 then
                                    local LootHolder = child
                                    for ii,anotherchild in pairs(LootHolder:GetChildren()) do
                                        if anotherchild.Name == "DrawerContainer" then
                                            local drawercontainer = anotherchild
                                            local prompt = drawercontainer.Knobs.ActivateEventPrompt
                                            if prompt.ActionText == "Loot" then
                                                fireproximityprompt(prompt)
                                            end
                                            local checkforgold = drawercontainer:FindFirstChild("GoldPile")
                                            if checkforgold then
                                                local goldprompt = checkforgold:WaitForChild("LootPrompt")
                                                fireproximityprompt(goldprompt)
                                            end
                                        elseif anotherchild.Name == "RolltopContainer" then 
                                            local drawercontainer = anotherchild
                                            local prompt = drawercontainer.ActivateEventPrompt
                                            if prompt.ActionText == "Loot" then
                                                fireproximityprompt(prompt)
                                            end
                                            local checkforgold = drawercontainer:FindFirstChild("GoldPile")
                                            if checkforgold then
                                                local goldprompt = checkforgold:WaitForChild("LootPrompt")
                                                fireproximityprompt(goldprompt)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if _G.AutoEntityNotifier == true then
        local rush = game.Workspace:FindFirstChild("RushMoving")
        local ambush = game.Workspace:FindFirstChild("AmbushMoving")
        if rush and _G.Sent == false then
            local rushbody = rush:WaitForChild("RushNew")
            if rushbody.CFrame.Y >= -9999 then
                game.StarterGui:SetCore("SendNotification",  {
                Title = "Alert!";
                Text = " ! ! ! RISk : RUSH CAME ! ! ! ";
                Icon = "";
                Duration = 10;
                })
                _G.Sent = true
            end
        elseif not rush then
            _G.Sent = false
        end
        if ambush and _G.SentAmbush == false then
            local ambushbody = ambush:WaitForChild("RushNew")
            if ambushbody.CFrame.Y >= -9999 then
                game.StarterGui:SetCore("SendNotification",  {
                Title = "Alert!";
                Text = " ! ! ! RISk : AMBUSH CAME ! ! ! ";
                Icon = "";
                Duration = 10;
                })
                _G.SentAmbush = true
            end
        elseif not ambush then
            _G.SentAmbush = false
        end
    end
    if _G.AutoHide == true then
        local character = player.Character
        if character then 
            local rootpart = character.HumanoidRootPart
            local human = character.Humanoid
            local pathfinding = game:GetService("PathfindingService")
            function Findtheclosetlocker()
                local closetdistance = math.huge
                local closewardrobe = nil
                for i,child in pairs(game.Workspace.CurrentRooms:GetChildren()) do
                    local checkforAssets = child:FindFirstChild("Assets")
                    if checkforAssets then
                        for ii,assetchild in pairs(checkforAssets:GetChildren()) do
                            if assetchild.Name == "Wardrobe" or assetchild.Name == "Toolshed" then
                                if (rootpart.Position - assetchild:WaitForChild("Door1").Position).Magnitude <= closetdistance and assetchild.HiddenPlayer.Value == nil then
                                    closewardrobe = assetchild
                                    closetdistance = (rootpart.Position - closewardrobe.Door1.Position).Magnitude
                                end
                            end
                        end
                    end
                end
                return closewardrobe
            end
            local rush = game.Workspace:FindFirstChild("RushMoving")
            if rush and _G.AlreadyHide == false then
                local rushbody = rush:WaitForChild("RushNew")
                if rushbody.CFrame.Y >= -9999 then
                    _G.AlreadyHide = true
                    local TargetLocker = Findtheclosetlocker()
                    rootpart.Anchored = true
                    wait(2)
                    rootpart.Anchored = false
                    local path = pathfinding:CreatePath()
                    path:ComputeAsync(rootpart.Position,TargetLocker.Door1.Position)
                    local waypoints = path:GetWaypoints()
                    for i,waypoint in pairs(waypoints) do
                        human:MoveTo(waypoint.Position)
                        human.MoveToFinished:Wait()
                        if (rootpart.Position - TargetLocker.Door1.Position).Magnitude <= 10 and TargetLocker.HiddenPlayer.Value == nil then
                            fireproximityprompt(TargetLocker.HidePrompt)
                            break
                        end
                    end
                end
            elseif not rush then
                _G.AlreadyHide = false
            end
        end
    end
    if _G.FullBright == true then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local rootpart = character.HumanoidRootPart
        local checkforlight = rootpart:FindFirstChild("PointLight")
        if not checkforlight then
            local light = Instance.new("PointLight")
            light.Name = "PointLight"
            light.Parent = rootpart
            light.Range = 60
            light.Brightness = 0.5
        end
        for i,room in pairs(game.Workspace.CurrentRooms:GetChildren()) do
            local roomstuff = room:GetDescendants()
            for ii,roomchild in pairs(roomstuff) do
                if roomchild.Name == "Assets" then
                    local lightstuff = roomchild:FindFirstChild("Light_Fixtures")
                    if lightstuff then
                        for iii,lightchild in pairs(lightstuff:GetChildren()) do
                            local check = lightchild:FindFirstChild("LightFixture")
                            if check then
                                anothercheckk = check:FindFirstChild("PointLight")
                            end
                            if check and anothercheckk then
                                if anothercheckk.Enabled == false then
                                    lightchild.LightFixture.PointLight.Brightness = 0.1
                                    lightchild.LightFixture.PointLight.Enabled = true 
                                    lightchild.LightFixture.PointLight.Range = 1000
                                end
                            end
                        end
                    end
                end
            end
        end
    elseif _G.FullBright == false then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local rootpart = character.HumanoidRootPart
        local checkforlight = rootpart:FindFirstChild("PointLight")
        if checkforlight then
            checkforlight:Destroy()
        end
        for i,room in pairs(game.Workspace.CurrentRooms:GetChildren()) do
            local roomstuff = room:GetDescendants()
            for ii,roomchild in pairs(roomstuff) do
                if roomchild.Name == "Assets" then
                    local lightstuff = roomchild:FindFirstChild("Light_Fixtures")
                    if lightstuff then
                        for iii,lightchild in pairs(lightstuff:GetChildren()) do
                            local check = lightchild:FindFirstChild("LightFixture")
                            if check then
                                anothercheckkk = check:FindFirstChild("PointLight")
                            end
                            if check and anothercheckkk then
                                if anothercheckkk.Enabled == true then
                                    lightchild.LightFixture.PointLight.Brightness = 0
                                    lightchild.LightFixture.PointLight.Enabled = false 
                                    lightchild.LightFixture.PointLight.Range = 9
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if _G.SpeedBoost == true then
        local playerhuman = game.Players.LocalPlayer.Character.Humanoid
        if playerhuman.WalkSpeed == 15 or playerhuman.WalkSpeed == 10 then 
            playerhuman.WalkSpeed = 21
        end
    elseif _G.SpeedBoost == false then
        local playerhuman = game.Players.LocalPlayer.Character.Humanoid
        if playerhuman.WalkSpeed == 21 then
            playerhuman.WalkSpeed = 15
        end
    end
    if _G.RemoveSeekStuff == true then
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms:FindFirstChild(stringroomnum)
        if currentroom then
            for a,asset in pairs(currentroom:WaitForChild("Assets"):GetChildren()) do
                if asset.Name == "Seek_Arm" or asset.Name == "ChandelierObstruction" then
                    asset:Destroy()
                end
            end
        end
    end
    if _G.RemoveGates == true then
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms:FindFirstChild(stringroomnum)
        if currentroom then
            for i,child in pairs(currentroom:GetChildren()) do
                if child.Name == "Gate" then
                    child:Destroy()
                end
            end
        end
    end
    if _G.RemovePaintingGates == true then
        for i = 1,100 do
            local inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms[stringroomnum]
        local currentroomassets = currentroom:FindFirstChild("Assets")
        if currentroomassets then
            local paintings = currentroomassets:FindFirstChild("Paintings")
            if paintings then
                local movingdoor = paintings:FindFirstChild("MovingDoor")
                if movingdoor then
                    movingdoor:Destroy()
                end
            end
        end
    end
    if _G.RemoveSkeletonDoor == true then
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms:FindFirstChild(stringroomnum)
        if currentroom then
            for i,child in pairs(currentroom:GetChildren()) do
                if child.Name == "Wax_Door" then
                    child:Destroy()
                end
            end
        end
    end
    if _G.RemoveSnares == true then 
        for i = 1,100 do
            inum = tostring(i)
            local check = game.Workspace.CurrentRooms:FindFirstChild(inum)
            if check then
                storednumber = inum
            end
        end
        local roomnumber = storednumber - 1
        local stringroomnum = tostring(roomnumber)
        local currentroom = game.Workspace.CurrentRooms:FindFirstChild(stringroomnum)
        if currentroom then
            for a,asset in pairs(currentroom:WaitForChild("Assets"):GetChildren()) do
                if asset.Name == "Snare" then
                    asset:Destroy()
                end
            end
        end
    end
end
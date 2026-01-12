local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

if game.PlaceId ~= 139217467707445 then return end

local player = Players.LocalPlayer
local mouse = player:GetMouse()

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PlazaGrapeGUI"
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 400)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = MainFrame

local TopBar = Instance.new("Frame")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 32)
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TopBar.BorderSizePixel = 0
TopBar.Parent = MainFrame

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 8)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0, 180, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "plaza grape"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 32, 0, 32)
CloseButton.Position = UDim2.new(1, -32, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
CloseButton.BorderSizePixel = 0
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 12
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = TopBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Size = UDim2.new(0, 32, 0, 32)
MinimizeButton.Position = UDim2.new(1, -64, 0, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 12
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Parent = TopBar

local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 8)
MinimizeCorner.Parent = MinimizeButton

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Size = UDim2.new(1, -16, 1, -48)
ScrollFrame.Position = UDim2.new(0, 8, 0, 40)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarThickness = 4
ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollFrame.Parent = MainFrame

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -8, 0, 0)
Content.BackgroundTransparency = 1
Content.AutomaticSize = Enum.AutomaticSize.Y
Content.Parent = ScrollFrame

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 8)
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Parent = Content

local KeywordLabel = Instance.new("TextLabel")
KeywordLabel.Name = "KeywordLabel"
KeywordLabel.Size = UDim2.new(1, 0, 0, 18)
KeywordLabel.BackgroundTransparency = 1
KeywordLabel.Text = "Keywords:"
KeywordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
KeywordLabel.TextSize = 12
KeywordLabel.Font = Enum.Font.GothamBold
KeywordLabel.TextXAlignment = Enum.TextXAlignment.Left
KeywordLabel.LayoutOrder = 1
KeywordLabel.Parent = Content

local AddKeywordFrame = Instance.new("Frame")
AddKeywordFrame.Name = "AddKeywordFrame"
AddKeywordFrame.Size = UDim2.new(1, 0, 0, 28)
AddKeywordFrame.BackgroundTransparency = 1
AddKeywordFrame.LayoutOrder = 2
AddKeywordFrame.Parent = Content

local AddKeywordButton = Instance.new("TextButton")
AddKeywordButton.Name = "AddKeywordButton"
AddKeywordButton.Size = UDim2.new(0, 28, 0, 28)
AddKeywordButton.Position = UDim2.new(1, -28, 0, 0)
AddKeywordButton.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
AddKeywordButton.BorderSizePixel = 0
AddKeywordButton.Text = "+"
AddKeywordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AddKeywordButton.TextSize = 16
AddKeywordButton.Font = Enum.Font.GothamBold
AddKeywordButton.Parent = AddKeywordFrame

local AddKeywordCorner = Instance.new("UICorner")
AddKeywordCorner.CornerRadius = UDim.new(0, 6)
AddKeywordCorner.Parent = AddKeywordButton

local KeywordsContainer = Instance.new("Frame")
KeywordsContainer.Name = "KeywordsContainer"
KeywordsContainer.Size = UDim2.new(1, 0, 0, 0)
KeywordsContainer.BackgroundTransparency = 1
KeywordsContainer.AutomaticSize = Enum.AutomaticSize.Y
KeywordsContainer.LayoutOrder = 3
KeywordsContainer.Parent = Content

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = KeywordsContainer

local ToggleFrame = Instance.new("Frame")
ToggleFrame.Name = "ToggleFrame"
ToggleFrame.Size = UDim2.new(1, 0, 0, 28)
ToggleFrame.BackgroundTransparency = 1
ToggleFrame.LayoutOrder = 4
ToggleFrame.Parent = Content

local ToggleLabel = Instance.new("TextLabel")
ToggleLabel.Name = "ToggleLabel"
ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
ToggleLabel.BackgroundTransparency = 1
ToggleLabel.Text = "keyword esp"
ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleLabel.TextSize = 12
ToggleLabel.Font = Enum.Font.GothamBold
ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
ToggleLabel.Parent = ToggleFrame

local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 46, 0, 22)
ToggleButton.Position = UDim2.new(1, -46, 0.5, -11)
ToggleButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
ToggleButton.BorderSizePixel = 0
ToggleButton.Text = ""
ToggleButton.Parent = ToggleFrame

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 11)
ToggleCorner.Parent = ToggleButton

local ToggleIndicator = Instance.new("Frame")
ToggleIndicator.Name = "ToggleIndicator"
ToggleIndicator.Size = UDim2.new(0, 18, 0, 18)
ToggleIndicator.Position = UDim2.new(0, 2, 0, 2)
ToggleIndicator.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
ToggleIndicator.BorderSizePixel = 0
ToggleIndicator.Parent = ToggleButton

local ToggleIndicatorCorner = Instance.new("UICorner")
ToggleIndicatorCorner.CornerRadius = UDim.new(0, 9)
ToggleIndicatorCorner.Parent = ToggleIndicator

local ConfigFrame = Instance.new("Frame")
ConfigFrame.Name = "ConfigFrame"
ConfigFrame.Size = UDim2.new(1, 0, 0, 32)
ConfigFrame.BackgroundTransparency = 1
ConfigFrame.LayoutOrder = 5
ConfigFrame.Parent = Content

local SaveConfigButton = Instance.new("TextButton")
SaveConfigButton.Name = "SaveConfigButton"
SaveConfigButton.Size = UDim2.new(0.48, 0, 1, 0)
SaveConfigButton.Position = UDim2.new(0, 0, 0, 0)
SaveConfigButton.BackgroundColor3 = Color3.fromRGB(80, 140, 200)
SaveConfigButton.BorderSizePixel = 0
SaveConfigButton.Text = "Save Config"
SaveConfigButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveConfigButton.TextSize = 12
SaveConfigButton.Font = Enum.Font.GothamBold
SaveConfigButton.Parent = ConfigFrame

local SaveConfigCorner = Instance.new("UICorner")
SaveConfigCorner.CornerRadius = UDim.new(0, 6)
SaveConfigCorner.Parent = SaveConfigButton

local LoadConfigButton = Instance.new("TextButton")
LoadConfigButton.Name = "LoadConfigButton"
LoadConfigButton.Size = UDim2.new(0.48, 0, 1, 0)
LoadConfigButton.Position = UDim2.new(0.52, 0, 0, 0)
LoadConfigButton.BackgroundColor3 = Color3.fromRGB(80, 160, 80)
LoadConfigButton.BorderSizePixel = 0
LoadConfigButton.Text = "Load Config"
LoadConfigButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadConfigButton.TextSize = 12
LoadConfigButton.Font = Enum.Font.GothamBold
LoadConfigButton.Parent = ConfigFrame

local LoadConfigCorner = Instance.new("UICorner")
LoadConfigCorner.CornerRadius = UDim.new(0, 6)
LoadConfigCorner.Parent = LoadConfigButton

local ServerHopButton = Instance.new("TextButton")
ServerHopButton.Name = "ServerHopButton"
ServerHopButton.Size = UDim2.new(1, 0, 0, 36)
ServerHopButton.BackgroundColor3 = Color3.fromRGB(180, 80, 80)
ServerHopButton.BorderSizePixel = 0
ServerHopButton.Text = "Server Hop"
ServerHopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerHopButton.TextSize = 14
ServerHopButton.Font = Enum.Font.GothamBold
ServerHopButton.LayoutOrder = 6
ServerHopButton.Parent = Content

local ServerHopCorner = Instance.new("UICorner")
ServerHopCorner.CornerRadius = UDim.new(0, 6)
ServerHopCorner.Parent = ServerHopButton

local espEnabled = false
local highlightedPlayers = {}
local beams = {}
local keywordEntries = {}
local keywordColors = {}
local nextEntryId = 1

local function createKeywordEntry(keywordText, color)
    local entryFrame = Instance.new("Frame")
    entryFrame.Name = "KeywordEntry"
    entryFrame.Size = UDim2.new(1, 0, 0, 28)
    entryFrame.BackgroundTransparency = 1
    
    local textBox = Instance.new("TextBox")
    textBox.Name = "KeywordBox"
    textBox.Size = UDim2.new(0.6, -36, 1, 0)
    textBox.Position = UDim2.new(0, 0, 0, 0)
    textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    textBox.BorderSizePixel = 0
    textBox.PlaceholderText = "Enter keyword..."
    textBox.Text = keywordText or ""
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextSize = 11
    textBox.Font = Enum.Font.Gotham
    textBox.Parent = entryFrame
    
    local textBoxCorner = Instance.new("UICorner")
    textBoxCorner.CornerRadius = UDim.new(0, 4)
    textBoxCorner.Parent = textBox
    
    local colorButton = Instance.new("TextButton")
    colorButton.Name = "ColorButton"
    colorButton.Size = UDim2.new(0, 28, 0, 28)
    colorButton.Position = UDim2.new(0.6, 4, 0, 0)
    colorButton.BackgroundColor3 = color or Color3.fromRGB(math.random(50, 255), math.random(50, 255), math.random(50, 255))
    colorButton.BorderSizePixel = 0
    colorButton.Text = ""
    colorButton.Parent = entryFrame
    
    local colorCorner = Instance.new("UICorner")
    colorCorner.CornerRadius = UDim.new(0, 4)
    colorCorner.Parent = colorButton
    
    local removeButton = Instance.new("TextButton")
    removeButton.Name = "RemoveButton"
    removeButton.Size = UDim2.new(0, 28, 0, 28)
    removeButton.Position = UDim2.new(1, -28, 0, 0)
    removeButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
    removeButton.BorderSizePixel = 0
    removeButton.Text = "-"
    removeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    removeButton.TextSize = 14
    removeButton.Font = Enum.Font.GothamBold
    removeButton.Parent = entryFrame
    
    local removeCorner = Instance.new("UICorner")
    removeCorner.CornerRadius = UDim.new(0, 4)
    removeCorner.Parent = removeButton
    
    local entryId = nextEntryId
    nextEntryId = nextEntryId + 1
    keywordEntries[entryId] = entryFrame
    keywordColors[entryId] = colorButton.BackgroundColor3
    
    colorButton.MouseButton1Click:Connect(function()
        local colorPicker = Instance.new("TextButton")
        colorPicker.Size = UDim2.new(0, 120, 0, 100)
        colorPicker.Position = UDim2.new(0, 0, 1, 4)
        colorPicker.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        colorPicker.BorderSizePixel = 0
        colorPicker.Text = "Click to pick color"
        colorPicker.TextColor3 = Color3.fromRGB(255, 255, 255)
        colorPicker.TextSize = 10
        colorPicker.TextWrapped = true
        colorPicker.ZIndex = 10
        colorPicker.Parent = colorButton
        
        local colorCorner = Instance.new("UICorner")
        colorCorner.CornerRadius = UDim.new(0, 6)
        colorCorner.Parent = colorPicker
        
        colorPicker.MouseButton1Click:Connect(function()
            keywordColors[entryId] = colorPicker.BackgroundColor3
            colorButton.BackgroundColor3 = colorPicker.BackgroundColor3
            colorPicker:Destroy()
        end)
        
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if not colorPicker or not colorPicker.Parent then
                connection:Disconnect()
                return
            end
            
            local mousePos = UserInputService:GetMouseLocation()
            local colorPickerPos = colorPicker.AbsolutePosition
            
            if mousePos.X < colorPickerPos.X or mousePos.X > colorPickerPos.X + 120 or
               mousePos.Y < colorPickerPos.Y or mousePos.Y > colorPickerPos.Y + 100 then
                keywordColors[entryId] = colorPicker.BackgroundColor3
                colorButton.BackgroundColor3 = colorPicker.BackgroundColor3
                colorPicker:Destroy()
                connection:Disconnect()
            end
        end)
        
        colorPicker.BackgroundColor3 = Color3.fromHSV(math.random(), 1, 1)
    end)
    
    removeButton.MouseButton1Click:Connect(function()
        entryFrame:Destroy()
        keywordEntries[entryId] = nil
        keywordColors[entryId] = nil
    end)
    
    entryFrame.Parent = KeywordsContainer
    return entryFrame
end

local function saveConfig()
    local config = {
        espEnabled = espEnabled,
        keywords = {}
    }
    
    for id, entryFrame in pairs(keywordEntries) do
        local textBox = entryFrame:FindFirstChild("KeywordBox")
        if textBox then
            table.insert(config.keywords, {
                text = textBox.Text,
                color = {
                    R = keywordColors[id].R,
                    G = keywordColors[id].G,
                    B = keywordColors[id].B
                }
            })
        end
    end
    
    local json = HttpService:JSONEncode(config)
    writefile("plaza_grape_config.json", json)
end

local function loadConfig()
    local success, result = pcall(function()
        return readfile("plaza_grape_config.json")
    end)
    
    if success then
        local config = HttpService:JSONDecode(result)
        
        for id, entryFrame in pairs(keywordEntries) do
            entryFrame:Destroy()
        end
        keywordEntries = {}
        keywordColors = {}
        nextEntryId = 1
        
        if config.keywords then
            for _, keywordData in pairs(config.keywords) do
                local color = Color3.new(keywordData.color.R, keywordData.color.G, keywordData.color.B)
                createKeywordEntry(keywordData.text, color)
            end
        end
        
        if config.espEnabled ~= nil then
            espEnabled = config.espEnabled
            local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            if espEnabled then
                ToggleIndicator.Position = UDim2.new(1, -20, 0, 2)
                ToggleIndicator.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
            else
                ToggleIndicator.Position = UDim2.new(0, 2, 0, 2)
                ToggleIndicator.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
            end
        end
        
        return true
    end
    return false
end

local function toggleESP()
    espEnabled = not espEnabled
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    if espEnabled then
        local tween = TweenService:Create(ToggleIndicator, tweenInfo, {Position = UDim2.new(1, -20, 0, 2), BackgroundColor3 = Color3.fromRGB(0, 200, 0)})
        tween:Play()
    else
        local tween = TweenService:Create(ToggleIndicator, tweenInfo, {Position = UDim2.new(0, 2, 0, 2), BackgroundColor3 = Color3.fromRGB(200, 200, 200)})
        tween:Play()
        
        for player, highlight in pairs(highlightedPlayers) do
            if highlight then highlight:Destroy() end
        end
        highlightedPlayers = {}
        
        for player, beam in pairs(beams) do
            if beam then beam:Destroy() end
        end
        beams = {}
    end
end

local function checkToolForKeyword(tool, keyword)
    if tool:FindFirstChild("Text") then
        local textInstance = tool.Text
        if textInstance:FindFirstChild("SurfaceGui") then
            local surfaceGui = textInstance.SurfaceGui
            if surfaceGui:FindFirstChild("TextLabel") then
                local textLabel = surfaceGui.TextLabel
                if string.find(string.lower(textLabel.Text), string.lower(keyword)) then
                    return true
                end
            end
        end
    end
    return false
end

local function createHighlight(player, color)
    local highlight = Instance.new("Highlight")
    highlight.Name = "PlazaGrapeHighlight"
    highlight.FillColor = color
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    highlight.Parent = player.Character
    return highlight
end

local function createBeam(targetPlayer, color)
    local beam = Instance.new("Beam")
    beam.Name = "PlazaGrapeBeam"
    beam.Color = ColorSequence.new(color)
    beam.Width0 = 0.2
    beam.Width1 = 0.2
    beam.FaceCamera = true
    
    local attachment0 = Instance.new("Attachment")
    attachment0.Name = "BeamAttachment0"
    attachment0.Parent = player.Character:FindFirstChild("HumanoidRootPart")
    
    local attachment1 = Instance.new("Attachment")
    attachment1.Name = "BeamAttachment1"
    attachment1.Parent = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    
    beam.Attachment0 = attachment0
    beam.Attachment1 = attachment1
    beam.Parent = player.Character
    
    return beam
end

local function updateESP()
    if not espEnabled then return end
    
    local activeKeywords = {}
    for id, entryFrame in pairs(keywordEntries) do
        local textBox = entryFrame:FindFirstChild("KeywordBox")
        if textBox and textBox.Text ~= "" then
            table.insert(activeKeywords, {
                text = textBox.Text,
                color = keywordColors[id] or Color3.fromRGB(255, 0, 0)
            })
        end
    end
    
    if #activeKeywords == 0 then return end
    
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            local character = otherPlayer.Character
            local matchedKeyword = nil
            
            for _, tool in pairs(character:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, keywordData in pairs(activeKeywords) do
                        if checkToolForKeyword(tool, keywordData.text) then
                            matchedKeyword = keywordData
                            break
                        end
                    end
                    if matchedKeyword then break end
                end
            end
            
            if matchedKeyword then
                if not highlightedPlayers[otherPlayer] then
                    highlightedPlayers[otherPlayer] = createHighlight(otherPlayer, matchedKeyword.color)
                    beams[otherPlayer] = createBeam(otherPlayer, matchedKeyword.color)
                else
                    highlightedPlayers[otherPlayer].FillColor = matchedKeyword.color
                    beams[otherPlayer].Color = ColorSequence.new(matchedKeyword.color)
                end
            else
                if highlightedPlayers[otherPlayer] then
                    highlightedPlayers[otherPlayer]:Destroy()
                    highlightedPlayers[otherPlayer] = nil
                end
                if beams[otherPlayer] then
                    beams[otherPlayer]:Destroy()
                    beams[otherPlayer] = nil
                end
            end
        end
    end
end

local function serverHop()
    local servers = {}
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100"))
    end)
    
    if success and result and result.data then
        for _, server in pairs(result.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                table.insert(servers, server.id)
            end
        end
    end
    
    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
    else
        TeleportService:Teleport(game.PlaceId)
    end

end

local function onCharacterAdded(character)
    if espEnabled then
        for otherPlayer, highlight in pairs(highlightedPlayers) do
            if highlight then highlight:Destroy() end
            if beams[otherPlayer] then beams[otherPlayer]:Destroy() end
        end
        highlightedPlayers = {}
        beams = {}
    end
end

local minimized = false

local function toggleMinimize()
    minimized = not minimized
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    if minimized then
        local tween = TweenService:Create(MainFrame, tweenInfo, {Size = UDim2.new(0, 320, 0, 32)})
        tween:Play()
        ScrollFrame.Visible = false
    else
        local tween = TweenService:Create(MainFrame, tweenInfo, {Size = UDim2.new(0, 320, 0, 400)})
        tween:Play()
        ScrollFrame.Visible = true
    end
end

AddKeywordButton.MouseButton1Click:Connect(function() createKeywordEntry() end)
ToggleButton.MouseButton1Click:Connect(toggleESP)
SaveConfigButton.MouseButton1Click:Connect(saveConfig)
LoadConfigButton.MouseButton1Click:Connect(loadConfig)
ServerHopButton.MouseButton1Click:Connect(serverHop)
CloseButton.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
MinimizeButton.MouseButton1Click:Connect(toggleMinimize)

player.CharacterAdded:Connect(onCharacterAdded)

if not loadConfig() then
    createKeywordEntry()
end

RunService.Heartbeat:Connect(updateESP)

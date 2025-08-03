local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CoolInjectorUI"
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Intro Frame
local IntroFrame = Instance.new("Frame")
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
IntroFrame.BackgroundTransparency = 0.9
IntroFrame.Parent = ScreenGui

local IntroText = Instance.new("TextLabel")
IntroText.Size = UDim2.new(0.6, 0, 0.4, 0)
IntroText.Position = UDim2.new(0.2, 0, 0.3, 0)
IntroText.BackgroundTransparency = 1
IntroText.TextWrapped = true
IntroText.Font = Enum.Font.GothamBold
IntroText.TextSize = 26
IntroText.TextColor3 = Color3.fromRGB(230, 230, 230)
IntroText.Text = [[
Welcome to the C00lkidd Injector!

This script was hard to find, so I made my own version.

Thanks for using it! If you'd like to say thanks, DM me.

Enjoy!
]]
IntroText.Parent = IntroFrame

local OkButton = Instance.new("TextButton")
OkButton.Size = UDim2.new(0, 180, 0, 50)
OkButton.Position = UDim2.new(0.5, -90, 0.75, 0)
OkButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
OkButton.AutoButtonColor = true
OkButton.Font = Enum.Font.GothamSemibold
OkButton.TextSize = 22
OkButton.TextColor3 = Color3.new(1, 1, 1)
OkButton.Text = "Let's Go!"
OkButton.Parent = IntroFrame

local function createMainUI()
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 600, 0, 350)
    MainFrame.Position = UDim2.new(0.2, 0, 0.2, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.ClipsDescendants = true
    MainFrame.AnchorPoint = Vector2.new(0, 0)

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.BorderSizePixel = 0
    Title.Font = Enum.Font.GothamBold
    Title.Text = "c00lkidd Injector 2025"
    Title.TextColor3 = Color3.fromRGB(220, 220, 220)
    Title.TextSize = 26
    Title.Parent = MainFrame

    local CodeBox = Instance.new("TextBox")
    CodeBox.Size = UDim2.new(0.96, 0, 0, 220)
    CodeBox.Position = UDim2.new(0.02, 0, 0, 50)
    CodeBox.ClearTextOnFocus = false
    CodeBox.MultiLine = true
    CodeBox.Font = Enum.Font.Code
    CodeBox.TextSize = 16
    CodeBox.TextColor3 = Color3.fromRGB(245, 245, 245)
    CodeBox.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    CodeBox.BorderSizePixel = 0
    CodeBox.Text = 'require(2845929020).ooga("c00lkiddK1ng")'
    CodeBox.Parent = MainFrame

    local function createButton(name, posX, text, sizeX)
        local btn = Instance.new("TextButton")
        btn.Name = name
        btn.Size = UDim2.new(sizeX or 0.3, 0, 0, 40)
        btn.Position = UDim2.new(posX, 0, 0, 280)
        btn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
        btn.BorderSizePixel = 0
        btn.Font = Enum.Font.GothamSemibold
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.TextSize = 20
        btn.Text = text
        btn.AutoButtonColor = true
        btn.Parent = MainFrame
        return btn
    end

    local ExecuteBtn = createButton("Execute", 0.02, "Execute")
    local ClearBtn = createButton("Clear", 0.35, "Clear")
    local ResetBtn = createButton("ResetCharacter", 0.68, "Reset", 0.3)

    ExecuteBtn.MouseButton1Click:Connect(function()
        local scriptText = CodeBox.Text
        local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")
        if assetId then
            local success, result = pcall(function()
                local objects = game:GetObjects("rbxassetid://" .. assetId)
                local obj = objects[1]
                if obj then
                    obj.Parent = PlayerGui
                    if obj:IsA("ModuleScript") then
                        local modSuccess, modResult = pcall(function()
                            return require(obj)
                        end)
                        if not modSuccess then
                            warn("Error requiring module:", modResult)
                        end
                    end
                end
            end)
            if not success then
                warn("Error loading asset:", result)
            end
        else
            warn("Invalid require() syntax.")
        end
    end)

    ClearBtn.MouseButton1Click:Connect(function()
        CodeBox.Text = ""
    end)

    ResetBtn.MouseButton1Click:Connect(function()
        local character = LocalPlayer.Character
        if character then
            LocalPlayer.Health = 0
        end
    end)
end

OkButton.MouseButton1Click:Connect(function()
    IntroFrame:Destroy()
    createMainUI()
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create Main GUI Container
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "IntroAndInjector"
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Fullscreen Intro Frame (dark red)
local IntroFrame = Instance.new("Frame")
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
IntroFrame.BorderSizePixel = 0
IntroFrame.Parent = ScreenGui
IntroFrame.ZIndex = 1000

-- Intro Text
local IntroText = Instance.new("TextLabel")
IntroText.Size = UDim2.new(1, -40, 0, 200)
IntroText.Position = UDim2.new(0, 20, 0.3, 0)
IntroText.BackgroundTransparency = 1
IntroText.TextWrapped = true
IntroText.Font = Enum.Font.SourceSansBold
IntroText.TextSize = 28
IntroText.TextColor3 = Color3.new(1, 1, 1)
IntroText.Text = "I made this script cause no one could find it and it was hard to find.\n\nSo I made my own.\n\nIf you would like to say thanks, DM me.\n\nAnyway, enjoy the C00lkid Injector!"
IntroText.Parent = IntroFrame
IntroText.ZIndex = 1001

-- OK Button
local OkButton = Instance.new("TextButton")
OkButton.Size = UDim2.new(0, 300, 0, 50)
OkButton.Position = UDim2.new(0.5, -150, 0.75, 0)
OkButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
OkButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
OkButton.BorderSizePixel = 2
OkButton.Font = Enum.Font.SourceSansBold
OkButton.Text = "OK Thanks for the script!"
OkButton.TextColor3 = Color3.new(1, 1, 1)
OkButton.TextSize = 24
OkButton.ZIndex = 1001
OkButton.Parent = IntroFrame

-- When clicked, destroy intro and load main GUI
OkButton.MouseButton1Click:Connect(function()
	IntroFrame:Destroy()

	-- ==== BEGIN C00LKIDD GUI ====

	local Frame = Instance.new("Frame")
	local TopBar = Instance.new("TextLabel")
	local RedGuy = Instance.new("ImageLabel")
	local BackgroundImage = Instance.new("ImageLabel")
	local TextBox = Instance.new("TextBox")
	local Execute = Instance.new("TextButton")
	local Clear = Instance.new("TextButton")
	local ResetCharacter = Instance.new("TextButton")
	local BodyTypeSwitch = Instance.new("TextButton")
	local AutoFill = Instance.new("TextButton")

	-- Gui Properties
	Frame.Name = "MainFrame"
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
	Frame.BorderSizePixel = 2
	Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
	Frame.Size = UDim2.new(0, 700, 0, 400)
	Frame.Active = true
	Frame.Draggable = true

	-- Red Guy Behind GUI
	RedGuy.Name = "RedGuy"
	RedGuy.Parent = ScreenGui -- note: not inside Frame
	RedGuy.BackgroundTransparency = 1
	RedGuy.Image = "rbxassetid://4761313851"
	RedGuy.Size = UDim2.new(0, 200, 0, 200)
	RedGuy.Position = UDim2.new(0.7, 40, 0.28, -100)
	RedGuy.ZIndex = 0
	RedGuy.ImageTransparency = 0.05

	-- Background Image
	BackgroundImage.Name = "BackgroundImage"
	BackgroundImage.Parent = Frame
	BackgroundImage.BackgroundTransparency = 1
	BackgroundImage.Image = "rbxassetid://101535985017144"
	BackgroundImage.Size = UDim2.new(0, 180, 0, 180)
	BackgroundImage.Position = UDim2.new(1, -200, 0.1, 20)
	BackgroundImage.Rotation = -10
	BackgroundImage.ZIndex = 0
	BackgroundImage.ImageTransparency = 0.7

	TopBar.Name = "TopBar"
	TopBar.Parent = Frame
	TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	TopBar.BackgroundTransparency = 0.95
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(1, 0, 0, 30)
	TopBar.Font = Enum.Font.SourceSansBold
	TopBar.Text = "c00lkidd 2025"
	TopBar.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar.TextSize = 24.0

	TextBox.Name = "CodeBox"
	TextBox.Parent = Frame
	TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderColor3 = Color3.fromRGB(255, 0, 0)
	TextBox.Position = UDim2.new(0, 10, 0, 40)
	TextBox.Size = UDim2.new(1, -20, 0, 250)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.Code
	TextBox.MultiLine = true
	TextBox.Text = "require(2845929020).ooga(\"c00lkiddK1ng\")"
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 16
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Top

	AutoFill.Name = "AutoFill"
	AutoFill.Parent = Frame
	AutoFill.BackgroundColor3 = Color3.fromRGB(0, 80, 0)
	AutoFill.BorderColor3 = Color3.fromRGB(255, 0, 0)
	AutoFill.Position = UDim2.new(0, 10, 0, 10)
	AutoFill.Size = UDim2.new(0, 160, 0, 20)
	AutoFill.Font = Enum.Font.SourceSans
	AutoFill.Text = "Auto Username Fill"
	AutoFill.TextColor3 = Color3.fromRGB(255, 255, 255)
	AutoFill.TextSize = 14

	Execute.Name = "Execute"
	Execute.Parent = Frame
	Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Execute.BorderColor3 = Color3.fromRGB(255, 0, 0)
	Execute.Position = UDim2.new(0, 10, 1, -60)
	Execute.Size = UDim2.new(0, 250, 0, 50)
	Execute.Font = Enum.Font.SourceSansBold
	Execute.Text = "Execute"
	Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
	Execute.TextSize = 24

	Clear.Name = "Clear"
	Clear.Parent = Frame
	Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Clear.BorderColor3 = Color3.fromRGB(255, 0, 0)
	Clear.Position = UDim2.new(0, 270, 1, -60)
	Clear.Size = UDim2.new(0, 250, 0, 50)
	Clear.Font = Enum.Font.SourceSansBold
	Clear.Text = "Clear"
	Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
	Clear.TextSize = 24

	ResetCharacter.Name = "ResetCharacter"
	ResetCharacter.Parent = Frame
	ResetCharacter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ResetCharacter.BorderColor3 = Color3.fromRGB(255, 0, 0)
	ResetCharacter.Position = UDim2.new(0, 490, 1, -60)
	ResetCharacter.Size = UDim2.new(0, 100, 0, 40)
	ResetCharacter.Font = Enum.Font.SourceSansBold
	ResetCharacter.Text = "Reset"
	ResetCharacter.TextColor3 = Color3.fromRGB(255, 255, 255)
	ResetCharacter.TextSize = 18

	BodyTypeSwitch.Name = "BodyTypeSwitch"
	BodyTypeSwitch.Parent = Frame
	BodyTypeSwitch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	BodyTypeSwitch.BorderColor3 = Color3.fromRGB(255, 0, 0)
	BodyTypeSwitch.Position = UDim2.new(0, 600, 1, -60)
	BodyTypeSwitch.Size = UDim2.new(0, 100, 0, 40)
	BodyTypeSwitch.Font = Enum.Font.SourceSansBold
	BodyTypeSwitch.Text = "BodyType"
	BodyTypeSwitch.TextColor3 = Color3.fromRGB(255, 255, 255)
	BodyTypeSwitch.TextSize = 18

	-- Functionality
execute.MouseButton1Click:Connect(function()
    local scriptText = CodeBox.Text
    local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")

    if assetId then
        local success, result = pcall(function()
            local objects = game:GetObjects("rbxassetid://" .. assetId)
            local obj = objects[1]
            if obj then
                obj.Parent = playerGui
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
	-- ==== END C00LKIDD GUI ====
end)

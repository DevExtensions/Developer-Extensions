-- simple notification library created by 0x96#8297



local SimpleNotifLib = {}
function SimpleNotifLib.SimpleNotifInit(speed, color, buttonText, titleTxt) 
	-- Instances:
	
	local OmegaLul = Instance.new("ScreenGui")  
	local MainUI = Instance.new("Frame")
	local NotifTitle = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")

	--Properties:

	OmegaLul.Name = "OmegaXD"
	OmegaLul.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	OmegaLul.ResetOnSpawn = false

	MainUI.Name = "MainUI"
	MainUI.Parent = OmegaLul
	MainUI.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	MainUI.BorderSizePixel = 0
	MainUI.Position = UDim2.new(0.84799999, 0, 0.842999995, 0)
	MainUI.Size = UDim2.new(0, 212, 0, 100)

	NotifTitle.Name = "NotifTitle"
	NotifTitle.Parent = MainUI
	NotifTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotifTitle.BackgroundTransparency = 1.000
	NotifTitle.BorderSizePixel = 0
	NotifTitle.Size = UDim2.new(0, 212, 0, 38)
	NotifTitle.Font = Enum.Font.SourceSansBold
	NotifTitle.Text = "Simple Notif API"
	NotifTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotifTitle.TextSize = 20.000
	NotifTitle.TextWrapped = true

	TextButton.Parent = MainUI
	TextButton.BackgroundColor3 = Color3.fromRGB(94, 94, 255)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.0283018872, 0, 0.689999998, 0)
	TextButton.Size = UDim2.new(0, 200, 0, 25)
	TextButton.Font = Enum.Font.SourceSansBold
	TextButton.Text = "OK!"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 25.000
	
    -- scripting

	local info = {
		Default_Color = Color3.fromRGB(53, 53, 53),
		DefaultNotifTitle = "Title",
		DefaultSubmitBtnText = "Submit",
		DefaultMUIPos = UDim2.new(1, 0,0.843, 0)
	}
	local tween = game:GetService("TweenService");
	local TInfo = 0.7

	-- Lines: calling/declaring parameter options
	
	local GUICOLOR = color or info.Default_Color;
	local GUISPEED = speed or TInfo;
	local GUIBTNTEXT = buttonText or info.DefaultSubmitBtnText;
	local GUITITLETXT = titleTxt or info.DefaultNotifTitle;

	TextButton.Text = GUIBTNTEXT
	NotifTitle.Text = GUITITLETXT
	MainUI.BackgroundColor3 = GUICOLOR

	-- checking if the MainUI's position is not the default //
	if MainUI.Position ~= info.DefaultMUIPos then
		MainUI.Position = info.DefaultMUIPos;
	end
	-- Tweening the UI 
	tween:Create(MainUI, TweenInfo.new(GUISPEED) or TInfo, { Position = UDim2.new(0.848, 0,0.843, 0)}):Play()

	--

	-- tweening the UI when someone has submitted the notification
	TextButton.MouseButton1Down:Connect(function()
		tween:Create(MainUI, TweenInfo.new(GUISPEED) or TInfo, { Position = UDim2.new(1, 0,0.843, 0)}):Play()
	end)	
	--
end
return SimpleNotifLib 

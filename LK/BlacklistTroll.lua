local API = {}


function API.BlacklistTroll(Text, Time)
    if game:IsLoaded() then
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = game:GetService("CoreGui")
        local TrollGUI = Instance.new("ImageLabel")
        
        
    
        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ScreenGui.ResetOnSpawn = false
    
        TrollGUI.Name = "TrollGUI"
        TrollGUI.Parent = ScreenGui
        TrollGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TrollGUI.BackgroundTransparency = 1.000
        TrollGUI.Position = UDim2.new(0.371536434, 0, 0.227157354, 0)
        TrollGUI.Size = UDim2.new(0, 408, 0, 429)
        TrollGUI.Image = "rbxassetid://6792324403"
    
        wait(Time)
        local Player = game:GetService("Players").LocalPlayer
        Player:Kick(Text)
    end
    return API.BlacklistTroll;
end
-- // DOCS \\ --
-- :                             
-- EXAMPLE, (EXECUTE THIS IN YOUR SYNAPSE X): 
-- API.BlacklistTroll("You have Been kicked!", 5)
-- :                               #1 ^^^^  #2 ^^
--[[
  -- : #1 => Text parameter for the custom kick message you'd like when it kicks you, MUST BE A STRING ex: "You have been kicked!"
  -- : #2 => Time parameter for how many X seconds it should kick you after the Troll face has appeared... MUST BE A NUMBER ex: 1 

 -- its just an obfuscated usable library to troll those who get blacklisted.

]]--

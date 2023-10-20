local Lib = loadstring(game:HttpGet("http://airbab.kro.kr/files/UI_Library.lua"))()

local CalltoDoor = game:GetService("ReplicatedStorage").CalltoDoor
local URNTab = Lib:Tab("Powers")
URNTab:TextBox("Music", function(text)
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local PlaySound = game:GetService("ReplicatedStorage").PlaySound
PlaySound:FireServer(
"rbxassetid://"..text,
0.5,
100,
CFrame.new(pos)
)
end)
URNTab:Button("Power Down", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Power",false)
end)
URNTab:Button("Inf Power", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Power",999999999)

wait(1)
ChangeGameValue:FireServer(
    "Usage",
    0
)
end)
URNTab:Button("Guard Win", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Victory",true)
end)
URNTab:Button("Guard Lose", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Death",true)
end)
URNTab:Toggle("FunFoxy!!!", function(state)
if state then
game.ReplicatedStorage.ChangeGameValue:FireServer("TestMode",true)
else
game.ReplicatedStorage.ChangeGameValue:FireServer("TestMode",false)
end
end)
URNTab:Button("Godmod Guard", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Night In Progress",false)
end)
URNTab:TextBox("Flicker Time", function(text)
local Flicker = game:GetService("ReplicatedStorage").Flicker
Flicker:FireServer(
tonumber(text)
)
end)
URNTab:Toggle("Invisibility", function(state)
local CharacterVisibility = game:GetService("ReplicatedStorage").CharacterVisibility
if state then
CharacterVisibility:FireServer(
   1
)
else
CharacterVisibility:FireServer(
   0
)
end
end)
local DoorTab = Lib:Tab("OFFICEHAX")
DoorTab:Button("OpenRightDoor", function()
CalltoDoor:FireServer(
   "Right Door Button",
   false
)
end)
DoorTab:Button("CloseRightDoor", function()
CalltoDoor:FireServer(
   "Right Door Button",
   true
)
end)
DoorTab:Button("OpenLeftDoor", function()
CalltoDoor:FireServer(
   "Left Door Button",
   false
)
end)
DoorTab:Button("CloseLeftDoor", function()
CalltoDoor:FireServer(
   "Left Door Button",
   true
)
end)
DoorTab:Button("Add Problems", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",true)
game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",true)
game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",true)
game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",true)
end)
DoorTab:Button("Solve Problems", function()
game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",false)
game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",false)
game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",false)
game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",false)
end)

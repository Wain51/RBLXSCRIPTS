local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Lucid Version: 1.2", HidePremium = false, SaveConfig = false})

_G.Key = game:HttpGet("https://pastebin.com/raw/GzNF0sJ7")
_G.KeyInput = "string"

function CorrectKeyNotification()
  OrionLib:MakeNotification({
    Name = "Key System",
    Content = "You have entered the correct key",
    Image = "rbxassetid://11207341665",
    Time = 5
})
end

function IncorrectKeyNotification()
  OrionLib:MakeNotification({
    Name = "Key System",
    Content = "You have entered the incorrect key",
    Image = "rbxassetid://13072237774",
    Time = 5
})
end

function MakeScriptHub()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Wain51/487278fa9394fc8225bab313efb1c41f/raw/ad2db9bcebe859581effb75322b398c4c4b9eef5/Sussy.lua"))()
end

function DestroyUI()
  OrionLib:Destroy()
end

local Tab = Window:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://13537891305",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
      _G.KeyInput = Value
    end      
})

Tab:AddButton({
    Name = "Verify Key!",
    Callback = function()
          if _G.KeyInput == _G.Key then
          CorrectKeyNotification()
          wait(1.5)
          DestroyUI()
          MakeScriptHub()
          else
              IncorrectKeyNotification()
          end
      end    
})

Tab:AddParagraph("Information","You are logged in as "..Player.DisplayName..".")

OrionLib:Init()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Farming Simulator - Luci",
    LoadingTitle = "Loading Script...",
    LoadingSubtitle = "",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Lucid"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local AutoFarm = Window:CreateTab("Autofarm") -- Title, Image
 local Section = AutoFarm:CreateSection("Autofarm")

 local Toggle = AutoFarm:CreateToggle({
    Name = "Auto Tool",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Toggle = Value
        while Toggle do wait()
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").FireTool:FireServer()
        end
    end,
 })

 local Button = AutoFarm:CreateButton({
    Name = "Sell (Emily)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.6995716, 7.89707899, 217.613419, 0, 0, 1, 1, 0, 0, 0, 1, 0)
    end,
 })

 local Button = AutoFarm:CreateButton({
    Name = "Sell (Henry)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.0264072, 0.798936009, -179.599808, 0, 0, -1, 1, 0, 0, 0, -1, 0)
    end,
 })

 local Button = AutoFarm:CreateButton({
    Name = "Sell (Jamie)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-89.6628799, 0.997083068, 570.377319, 0, -1, 0, 1, 0, -0, 0, 0, 1)
    end,
 })

 local Button = AutoFarm:CreateButton({
    Name = "Sell (Oscar)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.4195404, 0.660782218, 586.180481, 0, 1, 0, 1, 0, 0, 0, 0, -1)
    end,
 })

 local Button = AutoFarm:CreateButton({
    Name = "Sell (Abigail)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144.08873, 7.90345669, 94.1137009, 0, 0, 1, 1, 0, 0, 0, 1, 0)
    end,
 })

 local Teleport = Window:CreateTab("Teleport") -- Title, Image\
 local Section = Teleport:CreateSection("Teleport")

 local Button = Teleport:CreateButton({
    Name = "Dealership (George)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-196.749924, 15.9995241, 50.2500496, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Adam)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(274.177399, 4.92097139, 301.361938, 0.98986125, 0.0282772295, -0.139194071, -0.0252021924, 0.999398887, 0.02380546, 0.139783442, -0.0200560857, 0.98997885)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Bert)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(284.184265, -9.08705807, 418.886566, -0.818270087, -0.0422133803, 0.573282003, -0.0602642745, 0.998103797, -0.0125227496, -0.57166636, -0.04479542, -0.819262505)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Bob)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36.3759346, 20.4069309, -161.268707, -0.0382720977, 0.0352051556, -0.998646975, -0.0627372712, 0.997322917, 0.0375628099, 0.997296035, 0.0640900135, -0.0359610021)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Brendan)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-404.159851, 39.8994408, 472.806824, 0.875477195, 0.0364047103, -0.481886566, -0.0598541163, 0.997649074, -0.0333725587, 0.479538858, 0.0580598041, 0.875598073)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Daniel)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(337.898529, -2.09081936, 745.970093, -0.768056035, -0.0431188829, 0.638929367, -0.0652698278, 0.997805595, -0.0111226924, -0.637047827, -0.0502456613, -0.769184828)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (George)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.088486, 11.9013977, 77.6651154, 0.921784878, 0.0180502702, 0.387281239, -0.0398368202, 0.998037934, 0.0483010858, -0.385649592, -0.0599512421, 0.920695484)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Josh)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(301.866272, 18.9142437, -122.343437, -0.601783037, -0.0108614322, 0.798586249, -0.0270915534, 0.999609768, -0.00681962818, -0.798200428, -0.0257389024, -0.601842463)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Julia)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124.346634, 11.9059525, -29.2126045, -0.634088933, -0.0207285322, -0.772982538, -0.0468231663, 0.998835444, 0.0116246715, 0.771841407, 0.0435645841, -0.634321094)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Molly)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-320.037201, 18.9167786, 669.766052, -0.589636326, 0.0412458852, -0.806614995, 0.0140703851, 0.999068141, 0.0408014469, 0.807546139, 0.0127086211, -0.589667201)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Sally)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-308.196777, 18.8981781, 193.422821, 0.997725546, 0.0470859632, 0.0482361913, -0.049953714, 0.996942759, 0.0600816682, -0.0452598035, -0.0623545833, 0.997027338)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Shawn)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-58.7942772, 4.81376219, 584.082825, 0.477594644, 0.0381070971, -0.877753615, 0.00818064343, 0.998822749, 0.0478144065, 0.878542304, -0.0300164782, 0.476720721)
    end,
 })

 local Button = Teleport:CreateButton({
    Name = "Quest (Steve)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.618011, 11.9076328, 43.0128975, 0.997510135, 0.0638781413, 0.0298802853, -0.0637227669, 0.997948885, -0.0061243875, -0.0302102566, 0.00420509465, 0.999534667)
    end,
 })


 local Player = Window:CreateTab("Player") -- Title, Image\
 local Section = Player:CreateSection("Player")

 local Input = Player:CreateInput({
    Name = "WalkSpeed",
    PlaceholderText = "Speed",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text
    end,
 })

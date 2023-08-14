local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "monki hub",
   LoadingTitle = "feed da monkies",
   LoadingSubtitle = "by Alys",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
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
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Information",
   Content = "Press on any button to load the script for that specific game!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The gui will be destroyed!")
      end
   },
},
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image


local DM = MainTab:CreateButton({
   Name = "Difficulty Machine Script",
   Callback = function()
       if game.PlaceId == 13950003759 then
       Krnl.LoadAsync("https://raw.githubusercontent.com/AspectMajesty/test/main/thing.lua")
    Rayfield:Destroy(Window)
   end,
})

local MSZ = MainTab:CreateButton({
   Name = "Money Simulator Z Script",
   Callback = function()
        if game.PlaceId == 14082247421 then
        Krnl.LoadAsync("https://raw.githubusercontent.com/AspectMajesty/test/main/msz.lua")
    Rayfield:Destroy(Window)
   end,
})

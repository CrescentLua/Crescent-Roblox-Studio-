
------------{INTRO TO GAME}-----------------
wait(0.75) 
game.Players.LocalPlayer.PlayerGui.TS.Title:TweenPosition(UDim2.new(0.237,0,0.121,0), "Out", "Elastic", 1)
wait(1)
game.Players.LocalPlayer.PlayerGui.TS.Logo:TweenPosition(UDim2.new(0.435,0,0.272,0), "Out", "Linear", 1)

wait(1)
for i = 180, 360, 10 do
	wait(0.00001)
	game.Players.LocalPlayer.PlayerGui.TS.Logo.Rotation = i 
end

game.Players.LocalPlayer.PlayerGui.TS.POutline:TweenSizeAndPosition(UDim2.new(0.296, 0, 0.155, 0),UDim2.new(0.365,0,0.685,0), "Out", "Linear", 0.5)

game.Players.LocalPlayer.PlayerGui.TS.POutline.MouseButton1Click:connect(function() 
game.Players.LocalPlayer.PlayerGui.TS.POutline.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Title.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Logo.Visible = false

for i = 0, 1, 0.1 do
	wait(0.00001)
	game.Players.LocalPlayer.PlayerGui.TS.Main.BackgroundTransparency = i 
end
end)

game.Players.LocalPlayer.PlayerGui.TS.POutline.Play.MouseButton1Click:connect(function() 
game.Players.LocalPlayer.PlayerGui.TS.POutline.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Title.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Logo.Visible = false

for i = 0, 1, 0.1 do
	wait(0.00001)
	game.Players.LocalPlayer.PlayerGui.TS.Main.BackgroundTransparency = i 
end
end)
-------------{END OF INTRO}--------------

workspace.CurrentCamera.CameraType = "Track";
workspace.CurrentCamera.FieldOfView = 40;
game.Players.LocalPlayer.CameraMaxZoomDistance = 55; 
game.Players.LocalPlayer.CameraMinZoomDistance = 20; 

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16; 
coroutine.wrap(function()
	while wait(0.0001) do
local CharPosX = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
local CharPosY = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
local CharPosZ = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z


workspace.CurrentCamera.CFrame  = CFrame.new(CharPosX, CharPosY, CharPosZ + 15) 
  end
end)()
local FirstTestCode = "712" --If game development progresses, I plan on creating an array of all codes rather than just creating a separate variable for each one.
local FirstTeleportPos = CFrame.new(11.67, 6.379, -11.491) 
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

game.Players.LocalPlayer.PlayerGui.TS.POutline:TweenSizeAndPosition(UDim2.new(0.261, 0, 0.112, 0),UDim2.new(0.382,0,0.688,0), "Out", "Linear", 0.5)

game.Players.LocalPlayer.PlayerGui.TS.POutline.MouseButton1Click:connect(function() 
game.Players.LocalPlayer.PlayerGui.TS.POutline.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Title.Visible = false
game.Players.LocalPlayer.PlayerGui.TS.Logo.Visible = false

for i = 0, 1, 0.1 do
	wait(0.00001)
	game.Players.LocalPlayer.PlayerGui.TS.Main.BackgroundTransparency = i 
end
end)

-------------{END OF INTRO}--------------


local D1Touched = false  --When Door is touched
game.Workspace.Door1.Touched:Connect(function(hit)
	wait(0.5) 
   if D1Touched == false then 
	 D1Touched = true
	 game.Players.LocalPlayer.PlayerGui.TS.Main2.Visible = true 
	end
end)

-------------------- UI CODE ---------------------
game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Back.MouseButton1Click:connect(function() 
	game.Players.LocalPlayer.PlayerGui.TS.Main2.Visible = false 
	wait(2)
	D1Touched = false 
end)

game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Confirm.MouseButton1Click:connect(function() 
 	if game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Input.Text == FirstTestCode then 
	print (game.Players.LocalPlayer.Name, " has unlocked the door!") 
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.Text = "SUCCESS"
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.TextColor3 = Color3.fromRGB(46, 255, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FirstTeleportPos	
	wait(1.5) 
	game.Players.LocalPlayer.PlayerGui.TS.Main2.Visible = false 
		 
	else 
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.Text = "INCORRECT"
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.TextColor3 = Color3.fromRGB(255, 0, 0)
	
end
wait(3.5) 
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.Text = ""
	game.Players.LocalPlayer.PlayerGui.TS.Main2.CodeInput.Message.TextColor3 = Color3.fromRGB(0, 0, 0)
end)

-------------------- UI CODE ---------------------




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







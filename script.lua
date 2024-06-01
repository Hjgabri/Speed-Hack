local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local h = char:WaitForChild('Humanoid')
local character = player.Character


h.WalkSpeed = 50
h.JumpPower = 50


local function infinity(player)
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.MaxHealth = math.huge
			humanoid.Health = math.huge
		end
	end
end

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		infinity(player)
	end)
end)

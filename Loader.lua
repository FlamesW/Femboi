-- // Made by Mommy Flames
local Femboi = { GetService = function(service)
	return cloneref and cloneref(game:GetService(service)) or game:GetService(service)
end}

if not game:IsLoaded() then
    game.Loaded:Wait();
end

local Players: Players = Femboi.GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait();
local InMaintenance = false

if InMaintenance == true then
    LocalPlayer:Kick("Femboi is temporarily closed, Try again later~");
    return
end

Femboi.Services = {["VirtualUser"] = Femboi.GetService("VirtualUser"),
	["CoreGui"] = Femboi.GetService("CoreGui"),
	["Connections"] = getconnections or get_signal_cons
}

local Repo = "https://raw.githubusercontent.com/FlamesW/Femboi/home/Scripts/"

local Games = {
    [3576655] = Repo .. "ZombieAttack.lua",
    [1098481985] = Repo .. "ReelABrainrot.lua",
}

if not shared.__ then if Femboi.Services.Connections then for a,b in pairs(Femboi.Services.Connections(LocalPlayer.Idled))do if b.Disable then b:Disable()elseif b.Disconnect then b:Disconnect()end end else Anti_Idle=LocalPlayer.Idled:Connect(function()Femboi.Services.VirtualUser:CaptureController()Femboi.Services.VirtualUser:ClickButton2(Vector2.new())end)end;shared.__=true end
local a = Games[game.CreatorId]if a then local b,c=pcall(function()loadstring(game:HttpGet(a))("Mommy was here<3~")end)if not b then warn("Failed to load:",a,c)end else warn("💔 Unsupported Game~")end;

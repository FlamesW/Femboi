-- // Femboi Loader
local Scripts = {
    [1240123653] = "https://raw.githubusercontent.com/FlamesW/Femboi/home/Scripts/ZombieAttack.lua",
}

local function LoadFile(File)
    if File then
        local Success, Err = pcall(function()
            loadstring(game:HttpGet(File))();
        end)
    
        if not Success then
            warn("Error at:", File, Err)
        end
    end
end

local __Selected = Scripts[game.PlaceId];
if __Selected then
    LoadFile(__Selected) else warn("Unsupported Game");
end

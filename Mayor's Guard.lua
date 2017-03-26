TEAM_MAYOR4 = DarkRP.createJob("Mayor's Guard", {
	color = Color(911, 78, 99, 3255),
	VIPOnly = true,
	model = "models/suits/male_04_open_tie.mdl",
description = [[The Prime Minister is in the city keep him safe .
	If you are the Prime Minister BodyGuards you may create and accept warrants also unlike the mayor you run the country.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "m9k_mp5", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "president/mayorbodyguard",
	max = 3,
	salary = GAMEMODE.Config.normalsalary * 1.89,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true,
	customCheck = function(ply) return ply:GetUserGroup() == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "This job is VIP only!", -- Telling player that they cannot be job unless customercheck is true
})
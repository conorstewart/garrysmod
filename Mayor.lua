-------------------------------------------------------------------------------------------------------------
-- This will create the Mayor job.
-- FEATURES: Mayor will be demoted on death. Whether he's killed or dies naturally.
-- Mayor's Guard will also be demoted on Mayors death. The Mayors Guard will not be demoted on death.

-- To demote the Mayors Guard on Death add to the Mayor's Guard job:
--     PlayerDeath = function(ply, weapon, killer)
--     ply:teamBan()
--     ply:changeTeam(GAMEMODE.DefaultTeam, true)
--         if killer:IsPlayer() then
--             DarkRP.notifyAll(1, 4, "The mayor has been killed and is therefore demoted.")
--         else
--             DarkRP.notifyAll(1, 4, "The mayor has died and is therefore demoted.")
--         end
-------------------------------------------------------------------------------------------------------------




TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.89,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
    for _,v in pairs(team.GetPlayers(TEAM_MAYOR4)) do
        v:teamBan()
        v:changeTeam(GAMEMODE.DefaultTeam, true)
    end
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(1, 4, "The mayor has been killed and is therefore demoted.")
        else
            DarkRP.notifyAll(1, 4, "The mayor has died and is therefore demoted.")
        end
    end
})
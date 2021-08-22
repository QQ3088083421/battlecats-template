AddCSLuaFile()--?
--Battle Cat Base Template made by QQ3088083421
--Original data from https://battle-cats.fandom.com/wiki/Battle_Cats_Wiki
--We can take Japan Base as a template:
-------------============----Customizable Area--V
ENT.PrintName="07. Japan"				--Base name in spawnmenu
ENT.KillName="Japan Base"				--Base name in game
ENT.Category="Battle Cats - Bases"		--Category
-------------============----Customizable Area--^
ENT.Spawnable=true
if !GAME308 then
ENT.Base="base_anim"
function ENT:Initialize()if IsValid(self:GetCreator())and self:GetCreator():IsPlayer()then
self:GetCreator():ChatPrint(_308missing)end
self:Remove()end
return end
ENT.Base="npc_battlecats_base_ply"
-------------============----Customizable Area--V
ENT.StartMus="battlecats/snd003.ogg"	--Battle Music.
ENT.BossMus="battlecats/snd032.ogg"		--When the boss appear the music will stop then change to another music. you can set it to 'nil' if you dont want to change.
--"battlecats/snd004.ogg"--Moon Boss
ENT.HP=2400								--Base HP
ENT.MaxNum=6							--Maxium number of units
ENT.SNPCs={								--Battleground. The spawning of NPCs.
{class="npc_battlecats_doge",delay={10.67,18.67}},
{class="npc_battlecats_snache",delay={20,53.33}},
{class="npc_battlecats_thoseguys",after=40,delay={20,53.33}},
{class="npc_battlecats_thoseguys",num=8,delay={2,4},reach=.9},
{class="npc_battlecats_hippoe",num=1,boss=true,reach=.9},
--for example:
--{class="npc_battlecats_doge",num=0,after=1,boss=false,power=1,delay={4,4},reach=nil},
--{class="npc_battlecats_doge",num=5,after=5,boss=false,power=2,delay={2,6},reach=.5},
--{class="npc_battlecats_pigge",num=1,after=0,boss=true,power=2,delay=0,reach=.8},
}
-------------============----Customizable Area--^
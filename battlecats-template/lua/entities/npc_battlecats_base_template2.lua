AddCSLuaFile()--?
--Battle Cat Base Template made by QQ3088083421
--Original data from https://battle-cats.fandom.com/wiki/Battle_Cats_Wiki
--We can take Player Base[Initial] as a template:
-------------============----Customizable Area--V
ENT.PrintName="Player Base[Initial]"	--Base name in spawnmenu
ENT.KillName="Player Base"				--Base name in game
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
ENT.PlayerBase=1
-------------============----Customizable Area--V
--Sprites auto depends on entities/[this class name].png.
ENT.StartMus="battlecats/snd003.ogg"	--Battle Music.
ENT.BossMus="battlecats/snd032.ogg"		--When the boss appear the music will stop then change to another music. you can set it to 'nil' if you dont want to change.
--"battlecats/snd004.ogg"--Moon Boss
ENT.HP=2400								--Base HP
ENT.MaxNum=50							--This is default number
ENT.SNPCs={								--Battleground. The spawning of NPCs.
{class="npc_battlecats_cat",after=2,num=1},
{class="npc_battlecats_cat",after=5,num=3,delay={3,4}},
{class="npc_battlecats_cat",after=17.5,delay=3},
{class="npc_battlecats_tankcat",after=19,delay={3,6}},
{class="npc_battlecats_axecat",num=3,after=27,delay={7,11}},
{class="npc_battlecats_axecat",after=27,delay={4,7}},
{class="npc_battlecats_cowcat",after=48,delay={7,9}},
--for example:
--{class="npc_battlecats_doge",num=0,after=1,boss=false,power=1,delay={4,4},reach=nil},
--{class="npc_battlecats_doge",num=5,after=5,boss=false,power=2,delay={2,6},reach=.5},
--{class="npc_battlecats_pigge",num=1,after=0,boss=true,power=2,delay=0,reach=.8},
}
-------------============----Customizable Area--^
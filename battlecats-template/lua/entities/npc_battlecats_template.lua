AddCSLuaFile()
--Battle Cat Unit Template made by QQ3088083421
--Original data from https://battle-cats.fandom.com/wiki/Category:Normal_Cats
--We can take Baa Baa as a template:
-------------============----Customizable Area--V
ENT.PrintName="Template"	--His name(In the spawnmenu)
ENT.KillName="Baa Baa"		--His name(In the game)
ENT.Category="Battle Cats"	--Category
ENT.Spawnable=false--If you dont want to place this npc in Entity page, set it to true.
-------------============----Customizable Area--^
if !GAME308 then
ENT.Spawnable=true
ENT.Base="base_anim"
function ENT:Initialize()if IsValid(self:GetCreator())and self:GetCreator():IsPlayer()then
self:GetCreator():ChatPrint(_308missing)end
self:Remove()end
return end
-------------============----Customizable Area--V
ENT.Base="npc_battlecats_base_enemy"	--if you want to make cat unit, just set it to 'npc_battlecats_base_cat'
ENT.BBox=Vector(30,30,68)				--His bounding box. you have to test it in your game.
ENT.HP=500								--his max health and start health
---Appeance
ENT.Color=Color(255,255,255)
ENT.Scale=1						--Size. you can set it tiny, normal or huge!
ENT.SpriteScale=128				--Sprite Size in game.
---You can use these to make more NPCs!
ENT.StartSpeed=7				--Movement Speed
ENT.AttDamage=50				--Attack Power
ENT.AttRange=110				--Attack Range
ENT.AttRate=1.77				--Attack Frequency
ENT.AttTime=0.5					--Hit time
--Multi-Hit? Use it!
--ENT.AttTime={.1,.3,.5}
ENT.MeleeMultiple=1				--if he can do area attack, set to 0.
ENT.Knockback=3					--Knockback times
ENT.Sprites={												--Animation#1
["idle"]={Frame={"battlecats/enemys/baabaa1.png"}},
["walk"]={Delay=0.15,Frame={
"battlecats/enemys/baabaa1.png",
"battlecats/enemys/baabaa2.png",
"battlecats/enemys/baabaa1.png",
--"battlecats/enemys/baabaa4.png",
}},
["attack"]={Mode=1,NoLoop=1,AutoToggle="",Delay=0.05,Frame={
"battlecats/enemys/baabaaa1.png",
"battlecats/enemys/baabaaa2.png",
"battlecats/enemys/baabaaa3.png",
"battlecats/enemys/baabaaa4.png",
"battlecats/enemys/baabaaa3.png",
"battlecats/enemys/baabaaa4.png",
"battlecats/enemys/baabaaa5.png",
"battlecats/enemys/baabaaa6.png",
}},
["knockback"]={Frame={"battlecats/enemys/baabaakb.png"}}}	--Animation#1
--[[	Brave Cat--Animation#2
ENT.Sprites={
["idle"]={Frame={"battlecats/cats/catbrave1.png"}},
["walk"]={Delay=.15,Frame={
"battlecats/cats/catbrave1.png",
"battlecats/cats/catbrave2.png",
"battlecats/cats/catbrave1.png",
"battlecats/cats/catbrave4.png",
}},
["attack"]={Mode=1,NoLoop=1,AutoToggle="",Delay=.08,Frame={
"battlecats/cats/catbravea1.png",
"battlecats/cats/catbravea2.png",
"battlecats/cats/catbravea1.png",
"battlecats/cats/catbravea3.png",
"battlecats/cats/catbravea4.png",
}},
["knockback"]={Frame={"battlecats/cats/catbravekb.png"}}}
--]]	--Animation#2
--=====================--Special Abilities--
ENT.BCATS_Color={0}--Normally used to enemys.
--0-white,traitless
--1-red
--2-floating
--3-black,those killers
--4-angel
--5-blue,alien
--6-metal
--7-purple,zombie
--8-green(?),relic
--9-wathet blue,devil
ENT.BCATS_IndicateColor={}--Normally used to cats.
--for example: if he can indicate red and black and angel enemys,
--ENT.BCATS_IndicateColor={1,2,4}

--StrongAgainst:Indicated enemy types will take extra damage with damage received from that type also reduced.
ENT.StrongAgainst_Damage=1
ENT.StrongAgainst_Takes=1
--Fish Cat:Strong against Red enemies (inflicts 1.5x damage; takes 1/2 damage)
--ENT.StrongAgainst_Damage=1.5
--ENT.StrongAgainst_Takes=0.5

--MassiveDamage:Indicated enemy types will take extra damage with damage received from that type also reduced.
ENT.MassiveDamage=1
--Swimmer:Deals 3x damage to Floating Enemies.
--ENT.MassiveDamage=3

--Resistant:Damage received from indicated enemy types will be reduced significantly.
ENT.Resistant=1
--Fish Cat:Strong against Red enemies (inflicts 1.5x damage; takes 1/2 damage)
--ENT.Resistant=1.5

--Knockback:Unit has a set chance to push indicated enemy types back towards their base.
ENT.Knockback=0
--Jamiera Cat:30% chance to knockback non-Metal enemies.
--ENT.Knockback=0.3

---somethings are still incomplete yet...

---------Advanced Function--------
function ENT:OnHitEnemy2(enemy,damageinfo)end
----------Incomplete------------
--ENT.LongDistance={200,400}
-------------============----Customizable Area--^
Add308Nextbot(ENT)--If you dont want this spawnable, delete it.
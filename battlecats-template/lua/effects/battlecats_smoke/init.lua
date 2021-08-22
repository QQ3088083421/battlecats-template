function EFFECT:Init(data)
	local p=data:GetOrigin()
	local emitter=ParticleEmitter(p)
	self.Particle=emitter:Add("battlecats/effects/smoke1",p)
	self.Particle:SetDieTime(5)
	self.Particle:SetStartAlpha(255)
	self.Particle:SetEndAlpha(255)
	self.Particle:SetStartSize(32)
	self.Particle:SetEndSize(32)
	self.Particle:SetColor(255,255,255)
	emitter:Finish()
	self.Frame=1
	self.FrameTimer=CurTime()+.09
end
function EFFECT:Render()
end
function EFFECT:Think()if self.Particle:GetDieTime()==0 then return end
	if self.Frame<5 and self.FrameTimer<=CurTime()then
		self.Particle:SetMaterial("battlecats/effects/smoke"..self.Frame+1)
		self.Frame=self.Frame+1
		self.FrameTimer=CurTime()+.09
	elseif self.Frame>4 and self.FrameTimer<=CurTime()then
		self.Particle:SetDieTime(0)
	end
	return true
end
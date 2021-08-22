function EFFECT:Init(data)
	local p=data:GetOrigin()
	self.Mag=data:GetMagnitude()
	local emitter=ParticleEmitter(p)
	self.Particle=emitter:Add("battlecats/effects/halo1",p)
	self.Particle:SetVelocity(Vector(0,0,250))
	self.Particle:SetDieTime(15)
	self.Particle:SetStartAlpha(255)
	self.Particle:SetEndAlpha(255)
	self.Particle:SetStartSize(32)
	self.Particle:SetEndSize(32)
	self.Particle:SetColor(255,255,255)
	emitter:Finish()
	self.Frame=1
	self.FrameTimer=CurTime()+.15
	self.CTimer=CurTime()+4.5
end
function EFFECT:Render()
end
function EFFECT:Think()if self.Particle:GetDieTime()==0 then return end
	if self.FrameTimer<=CurTime()then self.Frame=self.Frame+1
		self.FrameTimer=CurTime()+.15
		if self.Frame>4 then self.Frame=1 end
		self.Particle:SetMaterial("battlecats/effects/halo"..self.Frame)
		if self.CTimer<=CurTime()then self.Particle:SetDieTime(0)end
	end
	return true
end

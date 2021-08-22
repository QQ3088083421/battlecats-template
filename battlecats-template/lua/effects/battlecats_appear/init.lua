function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
	self.Normal = data:GetNormal() or Vector(0,0,0)
	self.Size = 100
    self.LifeTime = CurTime() + 0.8
end


function EFFECT:Think()
    if !(self.LifeTime < CurTime()) then   
	if self.Size == 1500 then
	self.Size = -1
	end
	return true 
	end

    return false
end

function EFFECT:Render()
if self.Size != -1 then
self.Size = math.Clamp(self.Size + FrameTime()*3000,100,1500)
end
render.SetMaterial(Material("particle/particle_ring_wave_additive"))
render.DrawQuadEasy(self.Origin,Vector(1),self.Size,self.Size,Color(255,255,255,255-self.Size/1500*255),0)
render.DrawQuadEasy(self.Origin,Vector(0,0,1),self.Size,self.Size,Color(255,255,255,255-self.Size/1500*255),0)
render.DrawQuadEasy(self.Origin,Vector(0,1),self.Size,self.Size,Color(255,255,255,255-self.Size/1500*255),0)
end
return Def.ActorFrame{
	LoadActor(THEME:GetPathG("","playfield"))..{
		InitCommand=cmd(Center;rotationx,9;rotationy,-27;rotationz,0;zoom,.3;fov,60);
	};
};
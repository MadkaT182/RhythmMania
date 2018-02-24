return Def.ActorFrame{
	LoadActor("lane_09_top")..{
		OnCommand=cmd(y,-890);
	};
	LoadActor("lane_bottom")..{
		OnCommand=cmd(y,181);
	};
};
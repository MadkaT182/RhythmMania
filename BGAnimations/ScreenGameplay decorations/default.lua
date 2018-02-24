local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("","lifebar/lifebg"))..{
		InitCommand=cmd(x,SCREEN_RIGHT-43;y,SCREEN_CENTER_Y);
	};
};
for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("","lifebar/lifepill"))..{
			InitCommand=cmd(x,SCREEN_RIGHT-43;y,SCREEN_CENTER_Y);
			JudgmentMessageCommand=function(self, params)
				if params.Player == pn then
					self:croptop(1-STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife());
				end
			end;
		};
	};
end;
return t;
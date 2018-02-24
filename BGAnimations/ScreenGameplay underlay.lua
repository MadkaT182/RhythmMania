local t = Def.ActorFrame{};
local function hide(self)
    local bg = SCREENMAN:GetTopScreen():GetChild("SongBackground");
    if bg then
        bg:visible(false);
    end
end
t.OnCommand=hide
return t;
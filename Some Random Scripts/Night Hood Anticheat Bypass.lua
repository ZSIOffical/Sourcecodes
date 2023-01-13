local Hooked = {
    "CHECKER_1",
    "CHECKER_2",
    "CHECKER_3",
    "CHECKER_4",
    "CHECKER_5",
    "CHECKER_6",
    "CHECKER_7"
}
hook = hookmetamethod(game,"__namecall",newcclosure(function(Self,...)
    local Args = {...}
    if Self.name == "MainEvent" and getnamecallmethod() == "FireServer" and table.find(Hooked,Args[1]) then
        return
    end
    return hook(Self,...)
end))
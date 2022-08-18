
local _P = {}

function _P.change(arg)
    print(arg.name)
    print(arg.age)
end


local person = {"小冯", 35}


_P.change(person)

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by fengyafei.
--- DateTime: 2022/8/18 1:55 下午
---


local next = next
--- nil
local a = {}
local b = {name = "小冯", age = 32}
local c = {"小冯", "小王"}
local d = nil


print(#a)
print(#b)
print(#c)
--print(#d)


if next(c) ~= nil then
    print(next(c))
    print(next(c, 1))
end




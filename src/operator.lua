---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by fengyafei.
--- DateTime: 2022/8/16 2:22 下午
---


a = 1
b = 2
c = a + b
print("1 + 2 的值为 ", c )
c = a - b
print("1 - 2 的值为 ", c )
c = a * b
print("1 * 2 的值为 ", c )
c = a / b
print("1 / 2 的值为 ", c )
c = a % b
print("1 % 2 的值为 ", c )
c = a^2
print("1^2   的值为 ", c )
c = -a
print("-1    的值为 ", c )


if( a == b )
then
    print("a == b" )
else
    print("a 不等于 b" )
end

if( a ~= b )
then
    print("a 不等于 b" )
else
    print("a 等于 b" )
end

if ( a < b )
then
    print("a 小于 b" )
else
    print("a 大于等于 b" )
end

if ( a > b )
then
    print("a 大于 b" )
else
    print("a 小于等于 b" )
end

-- 修改 a 和 b 的值
a = 5
b = 20
if ( a <= b )
then
    print("a 小于等于  b" )
end

if ( b >= a )
then
    print("b 大于等于 a" )
end








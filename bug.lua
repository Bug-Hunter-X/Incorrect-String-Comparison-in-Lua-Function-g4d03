local function foo(a, b)
  if a < b then
    return a
  else
    return b
  end
end

local a = 10
local b = 5
local min = foo(a, b)
print(min) -- Output: 5

--The bug is that in Lua, when comparing numbers, Lua will compare the values directly as numbers.
--However, when comparing strings, Lua will compare the strings lexicographically.
--This will cause the function to return the wrong value when comparing strings.

local str1 = "10"
local str2 = "5"
local minStr = foo(str1, str2)
print(minStr) -- Output: 10, expected 5
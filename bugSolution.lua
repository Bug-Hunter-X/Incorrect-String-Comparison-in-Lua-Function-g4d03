local function foo(a, b)
  --Convert string to number if it is a string before comparison
  if type(a) == "string" then
    a = tonumber(a)
  end
  if type(b) == "string" then
    b = tonumber(b)
  end
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

local str1 = "10"
local str2 = "5"
local minStr = foo(str1, str2)
print(minStr) -- Output: 5
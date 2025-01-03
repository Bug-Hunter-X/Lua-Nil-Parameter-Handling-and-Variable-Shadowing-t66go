local function foo(a, b)
  a = a or 0  -- Use 'or' operator for safer default value assignment
  return a + b
end

local a = 10  -- a is defined outside the function
print(foo(nil, 5))  -- Output: 5
print(foo(a, 5))   -- Output: 15 (Correct)
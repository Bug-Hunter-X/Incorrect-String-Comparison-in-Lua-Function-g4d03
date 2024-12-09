# Lua String Comparison Bug

This repository demonstrates a common bug in Lua related to string comparison within a function intended for numerical comparison. The function `foo` is designed to find the minimum of two numbers, but it produces incorrect results when strings are passed as arguments.

The issue stems from Lua's lexicographical string comparison. When strings are compared, they are compared character by character according to their Unicode values, not as numbers.  This leads to unexpected behavior in the `foo` function when used with strings.

## How to reproduce

1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter. 
3. Observe that the output for numeric comparison is correct (5), while the output for string comparison is incorrect (10).
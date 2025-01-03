# Lua Nil Parameter Handling and Variable Shadowing

This example demonstrates a subtle issue in Lua related to how nil parameters are handled within functions, especially when combined with attempts to assign default values.  The problem highlights a potential for variable shadowing that can lead to unexpected behavior or errors.

## The Bug

The `foo` function is intended to provide a default value of 0 if the first argument `a` is nil. However, this approach has a pitfall when the function is called outside its intended context where `a` may be already defined within the current scope. This makes the assignment inside the function shadow the already defined variable `a`.
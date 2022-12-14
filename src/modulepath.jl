
"""
`moduledir(m::Module)` returns the base directory for `m = YourModule`.

# Example
```julia
using FileTools
moduledir(FileTools) # src
```

```julia
moduledir(FileTools, "lib", "internals") # src/lib/internals
```
"""
function moduledir(m::Module, args...)
    joinpath(dirname(pathof(m)),args...)
end


function moduledir(m::Module)
    joinpath(dirname(pathof(m)))
end

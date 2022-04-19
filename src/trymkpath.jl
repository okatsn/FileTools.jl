""" 
`trymkpath(path; kwargs...)` make path just like `mkpath(path; kwargs...)`, but does nothing rather than throwing an error if the directory already exists.
""" 
function trymkpath(path; kwargs...) 
    try 
        mkpath(path; kwargs...) 
    catch 
        @info """ 
            "$path" already exist; do nothing. 
        """ 
    end 
end 
 
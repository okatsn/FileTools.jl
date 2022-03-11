"""
`openit(path::AbstractString)`
open the path of the file/folder.
"""
function openit(path::AbstractString)
    if isempty(path)
        path = pwd();
    end

    if !ispath(path)
        @warn("You have entered an invalid file system entity.");
        return nothing
    end
    
    path = abspath(path); # this is required otherwise in windows the cmd command to run won't work properly.

    if Sys.iswindows()
        # if isfile(path)
        #     run(`cmd /c start $path`, wait=false);
        # else
            run(`cmd /c start %windir%\\explorer.exe $path`, wait=false);
        # end
    elseif Sys.islinux()
        run(xdg-open $path, wait=false);
    else
        @warn("Couldn't open $path");
    end
    return nothing
end

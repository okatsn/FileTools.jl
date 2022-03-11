module FileTools
filesep = Base.Filesystem.path_separator;
export filesep
# Write your package code here.
include("datalist.jl");
export datalist
include("openit.jl");
export openit

include("filelist.jl")
export filelist

include("filelistall.jl")
export filelistall

include("gettag.jl")
export gettag
end

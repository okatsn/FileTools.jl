module FileTools
filesep = Base.Filesystem.path_separator;
export filesep
# Write your package code here.
include("datalist.jl");

include("openit.jl");
export openit

include("filelist.jl")
export filelist

include("filelistall.jl")
export filelistall

include("gettag.jl")
export gettag

include("folderlist.jl")
export folderlist, folderlistall

using CSV
include("skipwrite.jl")
export skipwrite

using Printf
include("pathnorepeat.jl")
export pathnorepeat

include("trymkpath.jl")
export trymkpath

include("movefiles.jl")
export movefiles

include("modulepath.jl")
export moduledir
end

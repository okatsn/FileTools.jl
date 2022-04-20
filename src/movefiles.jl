
"""
`movefiles(flist::Vector, newdir::AbstractString)` move all items in `flist`to the `newdir` directory, preseving their original names.
"""
function movefiles(flist::Vector, newdir::AbstractString)
    for item in flist
        newpath = joinpath(newdir, basename(item))
        mv(item, newpath)
    end
end
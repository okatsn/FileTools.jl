"""
`skipwrite(fpath, df; kwargs...)` use `CSV.write` to write the dataframe `df` to csv, but skip and warn when file exists (`isfile(fpath)` is true). It takes the same keyword arguments as `CSV.write`.

"""
function skipwrite(fpath, df; args...)
    fname = basename(fpath)
    if isfile(fpath)
        @warn "$fname already exists. Skip the file."
    else
        CSV.write(fpath, df; args...)
        println("""File "$fname" created. """)
    end
end
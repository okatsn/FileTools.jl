@testset "folder.jl" begin
    dir = pwd()
    opts = (join = true, )
    fs = readdir(dir; opts...) 
    @test folderlist(dir; opts...) == fs[.~isfile.(fs)]
    @test isequal(folderlist(dir; join=false), basename.(folderlist(dir; join=true)))
    @test isequal(folderlist(dir), FileTools.datalist(r".*",dir;find="folder").fullpath)
    @test isequal(sort(folderlistall(dir)), sort(FileTools.datalist(r".*",dir;find="folder", method="walkdir").fullpath))
end

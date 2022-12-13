@testset "modulepath.jl" begin
    @test basename(moduledir(FileTools)) == "src"
end

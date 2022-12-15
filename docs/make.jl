using FileTools
using Documenter

DocMeta.setdocmeta!(FileTools, :DocTestSetup, :(using FileTools); recursive=true)

makedocs(;
    modules=[FileTools],
    authors="okatsn <okatsn@gmail.com> and contributors",
    repo="https://github.com/okatsn/FileTools.jl/blob/{commit}{path}#{line}",
    sitename="FileTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://okatsn.github.io/FileTools.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/okatsn/FileTools.jl",
    devbranch="main",
)

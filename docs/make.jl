using LibTDJSON
using Documenter

DocMeta.setdocmeta!(LibTDJSON, :DocTestSetup, :(using LibTDJSON); recursive = true)

makedocs(;
    modules = [LibTDJSON],
    sitename = "LibTDJSON.jl",
    format = Documenter.HTML(;
        repolink = "https://github.com/bhftbootcamp/LibTDJSON.jl",
        canonical = "https://bhftbootcamp.github.io/LibTDJSON.jl",
        edit_link = "master",
        assets = ["assets/favicon.ico"],
        sidebar_sitename = true,  # Set to 'false' if the package logo already contain its name
    ),
    pages = [
        "Home"    => "index.md",
    ],
    warnonly = [:doctest, :missing_docs],
)

deploydocs(;
    repo = "github.com/bhftbootcamp/LibTDJSON.jl",
    devbranch = "master",
    push_preview = true,
)

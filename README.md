# 2023_JuliaWorkshop-PkgGitCI

b4cd1eb8-1e24-11e8-3319-93036a3eb9f3

```julia
]activate --temp
Using PkgTemplates
tpl = Template(user="behinger",dir="./PkgTemplate", plugins=[GitHubActions(;extra_versions=["nightly"]),Documenter{GitHubActions}()])
tpl("MandelbrotFractal")
```

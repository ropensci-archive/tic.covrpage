[![Travis-CI Build Status](https://travis-ci.org/ropenscilabs/tic.covrpage.svg?branch=master)](https://travis-ci.org/ropenscilabs/tic.covrpage)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ropenscilabs/tic.covrpage?branch=master&svg=true)](https://ci.appveyor.com/project/ropensci/tic.covrpage)
[![Coverage Status](https://codecov.io/gh/ropenscilabs/tic.covrpage/branch/master/graph/badge.svg)](https://codecov.io/github/ropenscilabs/tic.covrpage?branch=master)
[![Covrpage Summary](https://covrpage.herokuapp.com/badge/ropenscilabs/tic.covrpage)](https://covrpage.herokuapp.com/url/ropenscilabs/tic.covrpage)

# tic.covrpage

A minimal example package that creates testing reports with [covrpage](https://metrumresearchgroup.github.io/covrpage/) and deployed by _tic_.

The report is compiled on the CI and can be deployed to either the master branch or to a development branch. It can also be deployed as a vignette/article to, and served from, the `gh-pages` branch.

_tic_ is an R package for CI-agnostic workflow definitions for various R projects. 
See its [documentation](https://ropenscilabs.github.io/tic/) for more information.

Some things to highlight in the setup of the template. 

If the `commit` is pushed to `origin/master` then after a successful build `covrpage` is run and the resulting `tests/README.md` is deployed back into the `origin/master` and if there is a vignette output [pkgdown](https://www.github.com/r-lib/pkgdown) will rebuild the `docs` folder and will be deployed into `gh-pages`.

If the commit is **not** pushed to `origin/master`, ie a `origin/<branch>`, then after a successful build `covrpage` is run and the resulting `tests/README.md` is deployed back into the `origin/<branch>`.

## Differences to a conventional CI setup

Only a few files need to be added or changed to enable integration with _tic_:

- [`tic.R`](tic.R): This file describes the CI workflow.
- [`.travis.yml`](.travis.yml): This file translates between CI stages of Travis CI and _tic_ stages.
- [`appveyor.yml`](appveyor.yml): This file translates between CI stages of AppVeyor and _tic_ stages.
- [`.Rbuildignore`](.Rbuildignore): The listed files should not be part of the R package building process and must be excluded.

## Set up an operational fork of this repository

If you want to experiment with _travis_ and _tic_ for a _covrpage_ project, you can fork it.

1. Use `usethis::create_from_github()` to automatically create a fork of this repo.
    If you use RStudio, a new RStudio project will open. 
    You may need to set up your SSH credentials first. 
    See [this guide](http://happygitwithr.com/ssh-keys.html) if you're having problems. 
    (It's definitely worth getting this function running as it saves you a lot of time in the future!) 
    Alternatively, fork this repo on Github and then create a new R Project within RStudio (File -> New Project -> Version Control -> Github). 
1. Run `tic::use_tic()` to set up all requirements needed for the CI integration of your package.

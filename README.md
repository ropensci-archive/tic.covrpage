[![Build Status](https://travis-ci.org/metrumresearchgroup/tic.covrpage.svg?branch=master)](https://travis-ci.org/metrumresearchgroup/tic.covrpage)
[![Covrpage Summary](https://img.shields.io/badge/covrpage-Last_Build_2019_01_18-yellowgreen.svg)](http://tinyurl.com/ybwygww5)

# tic.covrpage

A minimal example package that creates testing reports with [covrpage](https://metrumresearchgroup.github.io/covrpage/) and deployed by _tic_.

The report is compiled on the CI and can be deployed to either the master branch or to a development branch. It can also be deployed as a vignette/article to, and served from, the `gh-pages` branch.

_tic_ is an R package for CI-agnostic workflow definitions for various R projects. 
See its [documentation](https://ropenscilabs.github.io/tic/) for more information.

Some things to highlight in the setup of the template. 

If the `commit` is pushed to `origin/master` then after a successful build `covrpage` is run and the resulting `tests/README.md` is deployed back into the `origin/master` and if there is a vignette output [pkgdown](https://www.github.com/r-lib/pkgdown) will rebuild the `docs` folder and will be deployed into `gh-pages`.

If the commit is **not** pushed to `origin/master`, ie a `origin/<branch>`, then after a successful build `covrpage` is run and the resulting `tests/README.md` is deployed back into the `origin/<branch>`.

## Comparing to a conventional setup

Only a few files are added or changed to enable integration with _tic_:

- [`tic.R`](tic.R): This file describes the CI workflow.
- [`.travis.yml`](.travis.yml): This file translates between CI stages of Travis CI and _tic_ stages.
- [`.Rbuildignore`](.Rbuildignore): The files listed above are not part of a built R package and must be excluded.

## Set up an operational fork of this repository

If you want to experiment with _travis_ and _tic_ in this repo, you can fork it.

1. Use `usethis::create_from_github()` to automatically create a fork of this repo.
    If you use RStudio, a new RStudio project will open. 
    You may need to set up your SSH credentials first. See [this guide](http://happygitwithr.com/ssh-keys.html) if you're having problems. 
    (It's definitely worth getting this function running as it saves you so much time in the future!) 
    Alternatively, fork this repo on Github and then create a new R Project within RStudio (File -> New Project -> Version Control -> Github). 
1. Run `travis::use_tic()` to set up all requirements needed for the CI integration of your package.

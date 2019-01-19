tic::add_package_checks()

#if (Sys.getenv("id_rsa") != "") {
  # pkgdown documentation can be built optionally. Other example criteria:
  # - `inherits(ci(), "TravisCI")`: Only for Travis CI
  # - `ci()$is_tag()`: Only for tags, not for branches
  # - `Sys.getenv("BUILD_PKGDOWN") != ""`: If the env var "BUILD_PKGDOWN" is set
  # - `Sys.getenv("TRAVIS_EVENT_TYPE") == "cron"`: Only for Travis cron jobs
  tic::get_stage("before_deploy") %>%
    tic::add_step(tic::step_setup_ssh())

  tic::get_stage("deploy") %>%
    tic::add_code_step(covr::codecov())
  
  covrpage_flag <- '\\[\\s*(skip\\s+covrpage|covrpage\\s+skip)\\s*\\]'
  
  if(!grepl(covrpage_flag,Sys.getenv('TRAVIS_COMMIT_MESSAGE'))){
    tic::get_stage("deploy") %>%
      tic::add_code_step(devtools::install())%>%
      tic::add_code_step(covrpage::covrpage_ci())%>%
      tic::add_step(tic::step_push_deploy(commit_paths = "tests/README.md"))
    
    if (tic::ci()$get_branch() == "master") {
      tic::get_stage("deploy") %>%
        tic::add_step(tic::step_build_pkgdown()) %>%
        tic::add_step(tic::step_push_deploy(path = "docs", branch = "gh-pages"))
    }
    
  }
    
#}
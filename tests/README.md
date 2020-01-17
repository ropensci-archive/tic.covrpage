Tests and Coverage
================
06 January, 2020 13:33:04

  - [Coverage](#coverage)
  - [Unit Tests](#unit-tests)

This output is created by
[covrpage](https://github.com/metrumresearchgroup/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                | Coverage (%) |
| :-------------------- | :----------: |
| tic.covrpage          |    66.67     |
| [R/fun.R](../R/fun.R) |    66.67     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

| file                                 | n |  time | error | failed | skipped | warning | icon |
| :----------------------------------- | -: | ----: | ----: | -----: | ------: | ------: | :--- |
| [test\_func.R](testthat/test_func.R) | 4 | 0.017 |     0 |      0 |       0 |       1 | ⚠️   |

<details open>

<summary> Show Detailed Test Results
</summary>

| file                                     | context   | test               | status  | n |  time | icon |
| :--------------------------------------- | :-------- | :----------------- | :------ | -: | ----: | :--- |
| [test\_func.R](testthat/test_func.R#)    | test      | odd: check sum     | PASS    | 1 | 0.014 |      |
| [test\_func.R](testthat/test_func.R#)    | test      | even: check divide | PASS    | 1 | 0.001 |      |
| [test\_func.R](testthat/test_func.R#L22) | test warn | even: check divide | WARNING | 2 | 0.002 | ⚠️   |

| Failed | Warning | Skipped |
| :----- | :------ | :------ |
| 🛑      | ⚠️      | 🔶       |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                               |
| :------- | :---------------------------------- |
| Version  | R version 3.6.1 (2019-07-05)        |
| Platform | x86\_64-apple-darwin15.6.0 (64-bit) |
| Running  | macOS Mojave 10.14.5                |
| Language | en\_US                              |
| Timezone | America/New\_York                   |

| Package  | Version |
| :------- | :------ |
| testthat | 2.2.1   |
| covr     | 3.3.0   |
| covrpage | 0.0.70  |

</details>

<!--- Final Status : skipped/warning --->

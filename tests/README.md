Tests and Coverage
================
17 February, 2020 14:09:34

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
| [test\_func.R](testthat/test_func.R) | 4 | 0.016 |     0 |      0 |       0 |       1 | ⚠️   |

<details open>

<summary> Show Detailed Test Results
</summary>

| file                                     | context   | test               | status  | n |  time | icon |
| :--------------------------------------- | :-------- | :----------------- | :------ | -: | ----: | :--- |
| [test\_func.R](testthat/test_func.R#)    | test      | odd: check sum     | PASS    | 1 | 0.012 |      |
| [test\_func.R](testthat/test_func.R#)    | test      | even: check divide | PASS    | 1 | 0.001 |      |
| [test\_func.R](testthat/test_func.R#L22) | test warn | even: check divide | WARNING | 2 | 0.003 | ⚠️   |

| Failed | Warning | Skipped |
| :----- | :------ | :------ |
| 🛑      | ⚠️      | 🔶       |

</details>

<details>

<summary> Session Info
</summary>

| Field    | Value                         |                                                                                                                                                                                                                                  |
| :------- | :---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Version  | R version 3.6.2 (2017-01-27)  |                                                                                                                                                                                                                                  |
| Platform | x86\_64-pc-linux-gnu (64-bit) | <a href="https://travis-ci.org/ropenscilabs/tic.covrpage/jobs/651522156" target="_blank"><span title="Built on Travis">![](https://github.com/metrumresearchgroup/covrpage/blob/master/inst/logo/travis.png?raw=true)</span></a> |
| Running  | Ubuntu 16.04.6 LTS            |                                                                                                                                                                                                                                  |
| Language | en\_US                        |                                                                                                                                                                                                                                  |
| Timezone | UTC                           |                                                                                                                                                                                                                                  |

| Package  | Version |
| :------- | :------ |
| testthat | 2.3.1   |
| covr     | 3.4.0   |
| covrpage | 0.0.70  |

</details>

<!--- Final Status : skipped/warning --->

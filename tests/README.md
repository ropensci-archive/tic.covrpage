Tests and Coverage
================
18 January, 2019 15:13:11

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
| [test\_func.R](testthat/test_func.R) | 4 | 0.007 |     0 |      0 |       0 |       1 | ⚠️   |

<details open>

<summary> Show Detailed Test Results
</summary>

| file                                     | context   | test               | status  | n |  time | icon |
| :--------------------------------------- | :-------- | :----------------- | :------ | -: | ----: | :--- |
| [test\_func.R](testthat/test_func.R#)    | test      | odd: check sum     | PASS    | 1 | 0.002 |      |
| [test\_func.R](testthat/test_func.R#)    | test      | even: check divide | PASS    | 1 | 0.002 |      |
| [test\_func.R](testthat/test_func.R#L22) | test warn | even: check divide | WARNING | 2 | 0.003 | ⚠️   |

| Failed | Warning | Skipped |
| :----- | :------ | :------ |
| 🛑      | ⚠️      | 🔶       |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                               |
| :------- | :---------------------------------- |
| Version  | R version 3.5.1 (2018-07-02)        |
| Platform | x86\_64-apple-darwin15.6.0 (64-bit) |
| Running  | macOS 10.14.2                       |
| Language | en\_US                              |
| Timezone | America/Chicago                     |

| Package  | Version    |
| :------- | :--------- |
| testthat | 2.0.0.9000 |
| covr     | 3.2.0      |
| covrpage | 0.0.69     |

</details>

<!--- Final Status : skipped/warning --->

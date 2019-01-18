library(testthat)
library(tic.covrpage)

testthat::context('test')

testthat::describe('odd',{

  it('check sum',testthat::expect_equal(tic.covrpage::fun(3,2),5))
  
})

testthat::describe('even',{
  it('check divide',testthat::expect_equal(tic.covrpage::fun(2,2),1))
  
})

testthat::context('test warn')

testthat::describe('even',{
  
  it('check divide',{
    warning('aaa')
     testthat::expect_equal(tic.covrpage::fun(2,2),1)
    })
  
})

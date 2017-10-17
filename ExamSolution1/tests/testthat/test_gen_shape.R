context("gen_shape")

test_that("Output type is correct",{

  expect_true(is.data.frame(gen_shape()) )
  })

test_that("Output is correct ",{
  xx<-gen_shape()
  expect_equal(xx$t[1:3], c(1.0,1.1,1.2))
  expect_equal(round(xx$y[4:6],2), c(8.75,7.13,5.33))
  expect_equal(round(xx$x[17:20],2), c(2.19,1.25,0.60, 0.22))
})

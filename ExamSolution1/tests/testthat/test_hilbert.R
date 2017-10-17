context("hilbert")

test_that("Result is a matrix",
         {
           expect_true(is.matrix(hilbert(5,5)))
         }

)

test_that("Output is correct",{
  h<-hilbert(2,2)
  expect_equal(h[1,1], 1)
  expect_equal(h[1,2], 0.5)
  expect_equal(h[2,1], 0.5)
  expect_equal(round(h[2,2],2), 0.33)

})

context("inverse_triangular_block_matrix")

test_that("Class is right",{
  expect_true(is.matrix(inverse_triangular_block_matrix(diag(1), -1*diag(1), 5*diag(1))))
})
test_that("Dimension is correct",{
  x<-dim(inverse_triangular_block_matrix(diag(1), -1*diag(1), 5*diag(1)))
  expect_equal(x, c(2,2))
  
})

test_that("Returns correct result",{
  x<-inverse_triangular_block_matrix(diag(1), -1*diag(1), 5*diag(1))
  expect_equal(x, matrix(c(1,0.2,0,0.2), nrow=2, byrow = TRUE))
})
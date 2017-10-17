inverse_triangular_block_matrix<-function(A,B,C){
  D<-cbind(A,B)
  E<-cbind(0*C,C)
  F<-rbind(D,E)
  solve(F)
}

dim(inverse_triangular_block_matrix(diag(2), 2*diag(2), 3*diag(2)))
inverse_triangular_block_matrix(diag(1), -1*diag(1), 5*diag(1))

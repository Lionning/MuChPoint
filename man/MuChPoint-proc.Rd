% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MuChPoint.R
\name{MuChPoint}
\alias{MuChPoint}
\title{MuChPoint fitting procedure}
\usage{
MuChPoint(Y, Lmax = nrow(Y)/2, N = NULL, cores = 1, verbose = TRUE)
}
\arguments{
\item{Y}{symmetric matrix of observations.}

\item{Lmax}{a positive integer less than number of columns (and number of rows).
By default, \code{nrow(Y)/2}.}

\item{N}{a positive integer vector less than number of columns (and number of rows).
N is used when the break-points are known.
By default, \code{NULL}.}

\item{cores}{a positive integer giving the number of cores used. If you use windows,
 the parallelization is impossible.
By default, 1.}

\item{verbose}{logical. To display the progression bars. By default TRUE.}
}
\description{
Produce a block-wise estimation of a symmetric matrix.
}
\examples{
require(MuChPoint)
mu=c(rep(c(rep(1,25),rep(0,25)),3))\%*\%t(rep(c(rep(0,25),rep(1,25)),3))
Y=matrix(rnorm(150^2,0,5),150)+mu+t(mu)
Y=as.matrix(Matrix::forceSymmetric(Y))
res=MuChPoint(Y)
plot(res,Y,L=5,shiny=FALSE)
plot(res,Y,L=1:10,shiny=FALSE,ask=FALSE)


}
\references{
Article: BRAULT V., OUADAH S., SANSONNET L. and LEVY-LEDUC C. Nonparametric
homogeneity tests and multiple change-point estimation for analyzing large Hi-C data matrices.
Journal of Multivariate Analysis, 2017
}

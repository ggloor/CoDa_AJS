# rdirichlet function
rdirichlet <- function (n, alpha)
{
  if(length(n) > 1) n <- length(n)
  #if(length(n) == 0 || as.integer(n) == 0) return(numeric(0))
  #n <- as.integer(n)
  if(n < 0) stop("value(n) can not be negative in rtriang")

  if(is.vector(alpha)) alpha <- t(alpha)
  l <- dim(alpha)[2]
  x <- matrix(rgamma(l * n, t(alpha)), ncol = l, byrow=TRUE)  # Gere le recycling
  return(x / rowSums(x))
}

# modified qqplot function so overplot figures
qqpoint <- function (x, y, plot.it = TRUE, xlab = deparse(substitute(x)),
    ylab = deparse(substitute(y)), ...)
{
    sx <- sort(x)
    sy <- sort(y)
    lenx <- length(sx)
    leny <- length(sy)
    if (leny < lenx)
        sx <- approx(1L:lenx, sx, n = leny)$y
    if (leny > lenx)
        sy <- approx(1L:leny, sy, n = lenx)$y
    if (plot.it)
        points(sx, sy, xlab = xlab, ylab = ylab, ...)
    invisible(list(x = sx, y = sy))
}

# this is the Marioni dataset used for technical replicate figures
d <- read.table("~/Documents/LaTeX/ALDEx/t-test_aldex/data/marioni_count_table.txt", header=T, row.names=1)

# ensure that all rows have > 0 counts
d.count <- d[which(apply(d[,6:ncol(d)], 1, sum) > 0),6:ncol(d)]

if0 <- c(d.count[,2][d.count[,4] == 0], d.count[,4][d.count[,2] == 0])
if1 <- c(d.count[,2][d.count[,4] == 1], d.count[,4][d.count[,2] == 1])
if2 <- c(d.count[,2][d.count[,4] == 2], d.count[,4][d.count[,2] == 2])
if4 <- c(d.count[,2][d.count[,4] == 4], d.count[,4][d.count[,2] == 4])
if8<- c(d.count[,2][d.count[,4] == 8], d.count[,4][d.count[,2] == 8])
if16 <- c(d.count[,2][d.count[,4] == 16], d.count[,4][d.count[,2] == 16])
if32 <- c(d.count[,2][d.count[,4] == 33], d.count[,4][d.count[,2] == 33])
if64 <- c(d.count[,2][d.count[,4] == 64], d.count[,4][d.count[,2] == 64])

dir4 <- rdirichlet(100, d.count[,4]) * sum(d.count[,4])
rnorm4 <- t(rmultinom(100,sum(d.count[,4]), d.count[,4]))

#dirichlet
if0d <- d.count[,2][dir4[1,] == 0]
if1d <- d.count[,2][round(dir4[5,], 0) == 1]
if2d <- d.count[,2][round(dir4[5,],0) == 2]
if4d <- d.count[,2][round(dir4[5,],0) == 4]
if8d <- d.count[,2][round(dir4[5,],0) == 8]
if16d <- d.count[,2][round(dir4[5,],0) == 16]
if32d <- d.count[,2][round(dir4[5,],0) == 32]
if64d <- d.count[,2][round(dir4[5,],0) == 64]

if0r <- d.count[,2][rnorm4[1,] == 0]
if1r <- d.count[,2][round(rnorm4[5,], 0) == 1]
if2r <- d.count[,2][round(rnorm4[5,],0) == 2]
if4r <- d.count[,2][round(rnorm4[5,],0) == 4]
if8r <- d.count[,2][round(rnorm4[5,],0) == 8]
if16r <- d.count[,2][round(rnorm4[5,],0) == 16]
if32r <- d.count[,2][round(rnorm4[5,],0) == 32]
if64r <- d.count[,2][round(rnorm4[5,],0) == 64]


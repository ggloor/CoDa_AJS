par(mfrow=c(2,4), mar=c(3,2,2,2))

plot(density(if0) ,xlab="value", ylab="density", main="0")
for(i in 1:20){
	if0di <- d.count[,2][round(dir4[i,],0) == 0]
	points(density(if0di), type="l", col=rgb(1,0,0,0.1))
#	if0ni <- d.count[,2][round(rnorm4[i,],0) == 0]
#	points(density(if0ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=0,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if0), lty=3, lwd=2, type="l" )

plot(density(if1), xlab="value", ylab="density", main="1" )
for(i in 1:25){
	if1di <- d.count[,2][round(dir4[i,],0) == 1]
	points(density(if1di), type="l", col=rgb(1,0,0,0.1))
#	if1ni <- d.count[,2][round(rnorm4[i,],0) == 1]
#	points(density(if1ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=1,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if1), lty=3, lwd=2, type="l" )

plot(density(if2), xlab="value", ylab="density", main="2" )
for(i in 1:25){
	if2di <- d.count[,2][round(dir4[i,],0) == 2]
	points(density(if2di), type="l", col=rgb(1,0,0,0.1))
#	if2ni <- d.count[,2][round(rnorm4[i,],0) == 2]
#	points(density(if2ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=2,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if2), lty=3, lwd=2, type="l" )


plot(density(if4), xlab="value", ylab="density", main="4",ylim=c(0, 0.16) )
for(i in 1:25){
	if4di <- d.count[,2][round(dir4[i,],0) == 4]
	points(density(if4di), type="l", col=rgb(1,0,0,0.1))
#	if4ni <- d.count[,2][round(rnorm4[i,],0) == 4]
#	points(density(if4ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=4,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if4), lty=3, lwd=2, type="l" )

plot(density(if8), xlab="value", ylab="density", main="8",ylim=c(0, 0.11) )
for(i in 1:25){
	if8di <- d.count[,2][round(dir4[i,],0) == 8]
	points(density(if8di), type="l", col=rgb(1,0,0,0.1))
#	if8ni <- d.count[,2][round(rnorm4[i,],0) == 8]
#	points(density(if8ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=8,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if8), lty=3, lwd=2, type="l" )

plot(density(if16), xlab="value", ylab="density", main="16",ylim=c(0, 0.08) )
for(i in 1:25){
	if16di <- d.count[,2][round(dir4[i,],0) == 16]
	points(density(if16di), type="l", col=rgb(1,0,0,0.1))
#	if16ni <- d.count[,2][round(rnorm4[i,],0) == 16]
#	points(density(if16ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=16,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if16), lty=3, lwd=2, type="l" )


plot(density(if32), xlab="value", ylab="density", main="32",ylim=c(0, 0.055) )
for(i in 1:25){
	if32di <- d.count[,2][round(dir4[i,],0) == 32]
	points(density(if32di), type="l", col=rgb(1,0,0,0.1))
#	if32ni <- d.count[,2][round(rnorm4[i,],0) == 32]
#	points(density(if32ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=32,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if32), lty=3, lwd=2, type="l" )


plot(density(if64), xlab="value", ylab="density", main="64",ylim=c(0, 0.05) )
for(i in 1:25){
	if64di <- d.count[,2][round(dir4[i,],0) == 64]
	points(density(if64di), type="l", col=rgb(1,0,0,0.1))
#	if64ni <- d.count[,2][round(rnorm4[i,],0) == 64]
#	points(density(if64ni), type="l", col=rgb(0,0,1,0.1))
}
abline(v=64,lty=2, col=rgb(0,0,0,0.4), lwd=2)
points(density(if64), lty=3, lwd=2, type="l" )


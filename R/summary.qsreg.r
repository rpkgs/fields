"summary.qsreg" <-
function(x, ...)
{
	digits <- 4
	c1 <- "Number of Observations:"
	c2 <- (x$N)
	c1 <- c(c1, "Effective degrees of freedom:")
	c2 <- c(c2, format(round(x$trace, 1)))
	c1 <- c(c1, "Residual degrees of freedom:")
	c2 <- c(c2, format(round(x$N - x$trace, 1)))
	c1 <- c(c1, "Log10(lambda)")
	c2 <- c(c2, format(round(log10(x$lambda), 2)))
	sum <- cbind(c1, c2)
	dimnames(sum) <- list(rep("", dim(sum)[1]), rep("", dim(sum)[2]))
	cat("Call:\n")
	dput(x$call)
	print(sum, quote = F)
	invisible(x)
}

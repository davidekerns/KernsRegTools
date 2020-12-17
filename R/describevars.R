#' describevars
#'
#' @param df
#' @param y_var
#'
#' @return
#' @export
#'
#' @examples
describevars = function(df,y_var) {
  temp = df %>%
    keep(is.integer)
  for (var in temp){
    {par(mfrow=c(2,2))
      hist(train[,var], col="skyblue2", freq = FALSE, ylab = "Density",
           main = paste("Histogram of ", var, " Density")) #plot histogram
      lines(density(train[,var], adjust = 1.5),lwd = 2, col ="red")  #plot density line
      qqPlot(~train[,var], data=train, id=list(n=3), ylab = paste(var), main = paste(var, "qqPlot") ) #create qq plot
      Boxplot(~train[,var], data=train, ylab = paste(var, " distribution"), main = paste(var, "Boxplot")) #create boxplot
      plot(train[,var], train[,y_var], main = paste(var, " ",y_var, "Scatter"), ylab = y_var, xlab = var)
    }
  }
}

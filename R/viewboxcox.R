#' viewboxcox
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
viewboxcox = function(df){
  for (var in names(df)){
    symbox(df[,var],data=df, ylab = paste("Transformations of ",var))
    #summary(powerTransform(train_na[,var] ~ 1, data=train_na, family="bcPower"))
  }
}

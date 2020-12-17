#' malowscp
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
mallowscp = function(df){
  varnames = names(df)
  mallowsresult = leaps(x=df[,varnames], y=df[,5], names=names(df[,varnames]), method="Cp")
  return(mallowsresult)
}

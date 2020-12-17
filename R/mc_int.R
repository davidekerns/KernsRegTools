#'mc_int
#'
#' @param n
#'
#' @return
#' @export
#'
#' @examples
mc_int=function(n){
  u=runif(n)
  g=4*sqrt(1-u^2)
  mc_int=mean(g)
  mc_int
}

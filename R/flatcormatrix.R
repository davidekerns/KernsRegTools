#' flatCorMatrix
#'
#' @param matrix this is a matrix
#' @param pmat this is an output matrix
#'
#' @return
#' @export
#'
#' @examples
flatCorMatrix <- function(matrix, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor =(cormat)[ut],
    p = pmat[ut]
  )
}

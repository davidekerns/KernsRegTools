#' inthist
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
inthist = function(df){
  df %>%
    keep(is.integer) %>%
    gather() %>%
    ggplot(aes(value, y = )) +
    facet_wrap(~ key, scales = "free") +
    geom_histogram()
}

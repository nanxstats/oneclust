#' Masataka Okabe and Kei Ito's Color Universal Design palette
#'
#' @param x vector, color index
#' @param shift start from the second color in the CUD palette?
#' @param reverse reverse the order?
#'
#' @return a vector of color hex values
#'
#' @export cud
#'
#' @examples
#' barplot(rep(1, 7), col = cud(1:7))
#' barplot(rep(1, 8), col = cud(1:8, shift = FALSE))
#' barplot(rep(1, 8), col = cud(1:8, shift = FALSE, reverse = TRUE))
cud <- function(x, shift = TRUE, reverse = FALSE) {
  # black, orange, sky blue, bluish green, yellow, blue, vermillion, reddish purple
  pal <- c("#000000", "#e69f00", "#56b4e9", "#009e73", "#f0e442", "#0072b2", "#d55e00", "#cc79a7")
  if (shift) pal <- pal[-1]
  if (reverse) pal <- rev(pal)
  pal[x]
}

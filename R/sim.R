#' Simulate the levels and their sizes in a high-cardinality feature
#'
#' @param nlevels number of levels to generate
#' @param seed random seed
#'
#' @return a data frame of postal codes and sizes
#'
#' @export sim_postcode_levels
#'
#' @importFrom stats rlnorm
#'
#' @note The code is derived from the example described in the "rare levels"
#' vignette in the \code{vtreat} package.
#'
#' @examples
#' df_levels <- sim_postcode_levels(nlevels = 500, seed = 42)
#' head(df_levels)
sim_postcode_levels <- function(nlevels = 100L, seed = 1001) {
  set.seed(seed)
  # generate level names and sizes
  size <- round(rlnorm(nlevels, meanlog = log(4000), sdlog = 1))
  postcode <- paste0("z", formatC(sample.int(nlevels * 10L, size = nlevels, replace = FALSE), width = 5, flag = "0"))
  data.frame("size" = size, "postcode" = postcode, stringsAsFactors = FALSE)
}

#' Simulate a high-cardinality feature and a binary response
#'
#' @param df_levels number of levels
#' @param n number of samples
#' @param threshold the threshold for determining if a postal code is rare
#' @param prob occurrence probability vector of the class 1 event in rare and non-rare postal codes
#' @param seed random seed
#'
#' @return a data frame of samples with postal codes, response labels, and level rarity status
#'
#' @export sim_postcode_samples
#'
#' @importFrom stats runif
#'
#' @note The code is derived from the example described in the "rare levels"
#' vignette in the \code{vtreat} package.
#'
#' @examples
#' df_levels <- sim_postcode_levels(nlevels = 500, seed = 42)
#' df_postcode <- sim_postcode_samples(
#'   df_levels,
#'   n = 10000, threshold = 3000, prob = c(0.2, 0.1), seed = 43
#' )
#' head(df_postcode)
sim_postcode_samples <- function(df_levels, n = 2000L, threshold = 1000, prob = c(0.3, 0.1), seed = 1001) {
  set.seed(seed)
  # draw samples based on the levels
  ords <- sort(sample.int(sum(df_levels$size), size = n, replace = TRUE))
  cs <- cumsum(df_levels$size)
  indexes <- findInterval(ords, cs) + 1
  indexes <- indexes[sample.int(n, size = n, replace = FALSE)]
  postcode <- df_levels$postcode[indexes]
  is_rare <- df_levels$postcode[df_levels$size < threshold]
  is_rare <- postcode %in% is_rare
  label <- as.factor(as.integer(runif(n) < ifelse(is_rare, prob[1], prob[2])))
  data.frame("postcode" = postcode, "label" = label, "is_rare" = is_rare, stringsAsFactors = FALSE)
}

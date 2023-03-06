#' Maximum homogeneity clustering for one-dimensional data
#'
#' @param x Numeric vector, samples to be clustered.
#' @param k Integer, number of clusters.
#' @param w Numeric vector, sample weights (optional).
#' Note that the weights here should be sampling weights
#' (for example, a certain proportion of the population),
#' not frequency weights (for example, number of occurrences).
#' @param sort Should we sort `x` (and `w`) before clustering?
#' Default is `TRUE`. Otherwise the order of the data is respected.
#'
#' @return A list containing:
#' - `cluster` - cluster id of each sample.
#' - `cut` - index of the optimal cut points.
#'
#' @export oneclust
#'
#' @references
#' Fisher, Walter D. 1958. On Grouping for Maximum Homogeneity.
#' _Journal of the American Statistical Association_ 53 (284): 789--98.
#'
#' @examples
#' set.seed(42)
#' x <- sample(c(
#'   rnorm(50, sd = 0.2),
#'   rnorm(50, mean = 1, sd = 0.3),
#'   rnorm(100, mean = -1, sd = 0.25)
#' ))
#' oneclust(x, 3)
oneclust <- function(x, k, w = NULL, sort = TRUE) {
  if (k < 2L) stop("k must be an integer larger than 2")
  if (!is.null(w)) {
    if (length(w) != length(x)) stop("x and w must have identical length")
  } else {
    w <- rep(1.0, length(x))
  }
  cl <- clust(x, k, w, sort)
  list(
    "cluster" = cl$cluster_id,
    "cut" = cl$opt_cut
  )
}

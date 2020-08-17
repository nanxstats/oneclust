#ifndef ONECLUST_SRC_ONECLUST_H_
#define ONECLUST_SRC_ONECLUST_H_

#include <Rcpp.h>
using namespace Rcpp;

// replicate base::rank() with zero-based index
IntegerVector rank_c(NumericVector x, NumericVector x_sort)
{
  // NumericVector x_sort = clone(x).sort();
  return match(x, x_sort) - 1L;
}

// replicate base::order() with zero-based index
IntegerVector order_c(NumericVector x, NumericVector x_sort)
{
  // NumericVector x_sort = clone(x).sort();
  return match(x_sort, x) - 1L;
}

// get a slice from a vector
NumericVector slice(NumericVector x, int start, int end)
{
  bool idx_error = ((start < 0L) | (end < 0L) | (start > x.length() - 1L) | (end > x.length() - 1L));
  if (idx_error)
  {
    stop("'start' and 'end' must be in the index range of x.");
  }

  if (start < end)
  {
    return x[Range(start, end)];
  }
  else if (start == end)
  {
    return NumericVector::create(x[start]);
  }
  else
  {
    return rev(x[Range(end, start)]);
  }
}

// weighted sum of squares for deviations
double ssq_dev(NumericVector x, NumericVector w)
{
  double center = sum(w * x) / x.length();
  return sum(w * pow(x - center, 2));
}

// concatenate an integer vector and a integer
IntegerVector concat(IntegerVector x, int y)
{
  int n = x.length();
  IntegerVector z(n + 1);
  for (int i = 0; i < n; ++i)
  {
    z[i] = x[i];
  }
  z[n] = y;
  return z;
}

#endif // ONECLUST_SRC_ONECLUST_H_

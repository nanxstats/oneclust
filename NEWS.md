# oneclust 0.3.0

## Improvements

- Remove the magrittr package from `Imports`. As a result, the magrittr pipe
  is no long re-exported by oneclust. This change makes oneclust only use the
  minimal sufficient number of dependencies.
- Update the code examples in the vignette to use meaningful intermediate
  variable names instead of relying on the pipe operator.

# oneclust 0.2.3

## Improvements

- Clarify in the documentation that the weights should be sampling weights
  instead of frequency weights (thanks, @krzysztof-pankow, #3).
- Improve document style following the tidyverse style guide.

# oneclust 0.2.2

## Improvements

- Use dependencies (genlasso) conditionally in vignettes.
- Fix clang14 warning on using bitwise `|` with boolean operands.
- Remove the `LazyData` field in `DESCRIPTION` to fix the check note.

# oneclust 0.2.1

## Improvements

- Reset graphical parameters after changing them in the vignette.

# oneclust 0.2.0

## New Features

- Add an argument `sort` in `oneclust()` to support solving the restricted clustering problem (preserving data order).

# oneclust 0.1.0

## New Features

- First public release.


test_that("t0 is smaller than t", {
  t0 <- 5
  t <- 10
  expect_lt(t0, t)  # Ensures t0 < t

  t0 <- 10
  t <- 5
  expect_false(t0 < t)  # Ensures test properly fails when t0 >= t
})

test_that("cseq correctly computes integrals", {
  # Define x and y for a known function (e.g., y = x^2)
  x <- seq(0, 10, length.out = 100)
  y <- x^2  # We know the integral of x^2 analytically

  # Set integration bounds
  t0 <- 2
  t <- 5

  # Compute expected integral using base R's integrate function
  spline_fn <- splinefun(x, y)  # Interpolating function
  expected_integral <- integrate(spline_fn, lower = t0, upper = t)$value

  # Run the function
  result <- cseq(x, y, t0, t)

  # Compare computed values to expected integral
  expect_equal(result$cseq[1], expected_integral, tolerance = 1e-6)
})

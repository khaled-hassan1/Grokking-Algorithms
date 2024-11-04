int factorial(int n) {
  // Base casr
  if (n == 0) {
    return 1;
  } else if (n == 1) {
    return 1;
  }
  // Recursive case
  return n * factorial(n - 1);
}

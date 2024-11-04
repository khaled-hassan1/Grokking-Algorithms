int sumOfDigits(int n) {
  // Base case
  if (n == 0) {
    return 0;
  }
  // Recursive case
  int lastDigit = n % 10;
  return lastDigit + sumOfDigits(n ~/ 10);
}
// 123 

String reverseString(String str) {
  // Base case
  if (str.isEmpty) {
    return str;
  }
  // Recursive case
  return reverseString(str.substring(1)) + str[0];
}

//hello
# Grokking Algorithms Implementation From Python To Dart

## Learning Journey
After reading "Grokking Algorithms" by Aditya Bhargava, I embarked on a practical coding journey to implement key algorithmic concepts using Dart.

## Algorithms Implemented

### Searching Algorithms
- Binary Search
- Linear Search

### Sorting Algorithms
- Quicksort
- Selection Sort

### Data Structures
- Arrays
- Hash Tables
- Recursion Implementations

### Graph Algorithms
- Breadth-First Search
- Dijkstra's Algorithm

### Advanced Concepts
- Big O Notation Examples
- Dynamic Programming Implementations

## Learning Objectives
- Deeply understand algorithmic concepts
- Practice implementation in Dart

## Key Concepts Covered
- Time Complexity Analysis
- Recursive vs Iterative Approaches
- Algorithm Optimization Techniques

## Example Usage
```dart
void main() {
  // Binary Search Example
  final sortedList = [1, 3, 5, 7, 9, 11, 13];
  final result = binarySearch(sortedList, 7);
  print('Found at index: $result');
}

int binarySearch(List<int> nums, int target) {
  int low = 0;
  int high = nums.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = nums[mid];
    if (guess == target) {
      return mid;
    } 
     if (nums[mid] > target) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
```

## Inspiration
Inspired by the book "Grokking Algorithms" by Aditya Bhargava, this project aims to make complex algorithmic concepts more accessible and understandable.

## Contributing
Suggestions and improvements are welcome! Feel free to open an issue or submit a pull request.

## License
Ghaly License

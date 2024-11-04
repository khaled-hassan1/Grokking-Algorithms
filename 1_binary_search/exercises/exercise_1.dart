

int? firstBadVersion(int n) {
  int low = 0;
  int high = n;
  while (low < high) {
    int mid = (low + high) ~/ 2;
    if (isBadVersion(mid)) {
      high = mid;
    } else {
      low = mid + 1;
    }
  }
  return low;
}

bool isBadVersion(int version) {
  int firstBad = 6;
  return version >= firstBad;
}

main() {
  List<int> nums = [10, 20, 30, 35, 40, 46, 60];
  int startIdx = 0;
  int endIdx = nums.length - 1;
  int mid = 0;
  int target = 10;

  while (startIdx <= endIdx) {
    mid = (endIdx + startIdx) ~/ 2;
    if (nums[mid] == target) {
      mid++;
      print('element at $mid th position');
      break;
    } else if (target < nums[mid]) {
      endIdx = mid - 1;
    } else {
      startIdx = mid + 1;
    }
  }
}

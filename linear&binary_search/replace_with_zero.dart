void main() {
  List<int> nums = [10, 20, 30, 35, 40, 46, 60];
  int startIdx = 0;
  int endIdx = nums.length - 1;
  int mid = 0;
  int target = 40;

  while (startIdx <= endIdx) {
    mid = (endIdx + startIdx) ~/ 2;
    if (nums[mid] == target) {
      print('Element found at index $mid');
      nums[mid] = 0; // Replace the found target with zero
      break;
    } else if (target < nums[mid]) {
      endIdx = mid - 1;
    } else {
      startIdx = mid + 1;
    }
  }

  print('Updated nums: $nums');
}

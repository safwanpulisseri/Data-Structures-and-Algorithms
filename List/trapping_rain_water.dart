void main() {
  List<int> height1 = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];
  print(trap(height1));
}

int trap(List<int> height) {
  int n = height.length;
  if (n <= 2) return 0;

  int left = 0, right = n - 1;
  int leftMax = 0, rightMax = 0;
  int trappedWater = 0;

  while (left < right) {
    if (height[left] < height[right]) {
      if (height[left] >= leftMax) {
        leftMax = height[left];
      } else {
        trappedWater += leftMax - height[left];
      }
      left++;
    } else {
      if (height[right] >= rightMax) {
        rightMax = height[right];
      } else {
        trappedWater += rightMax - height[right];
      }
      right--;
    }
  }

  return trappedWater;
}

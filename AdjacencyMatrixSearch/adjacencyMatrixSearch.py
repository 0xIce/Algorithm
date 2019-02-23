def find(target, array):
  i = len(array) - 1
  j = 0
  while i >= 0 and j < len(array[0]):
    if array[i][j] == target:
      return True
    elif array[i][j] > target:
      i -= 1
    else:
      j += 1

  return False


if __name__ == "__main__":
  # array = [
  #   [1, 3, 4, 7],
  #   [2, 4, 5, 8],
  #   [5, 6, 7, 9],
  #   [7, 8, 9, 10]
  # ]
  array = [[1,2,8,9],[2,4,9,12],[4,7,10,13],[6,8,11,15]]
  print(find(1, array))


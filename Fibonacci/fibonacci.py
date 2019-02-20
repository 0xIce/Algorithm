def fibonacci(length):
  pre = 1
  result = 0
  for _ in range(length):
    pre, result = result, pre + result

  return result


if __name__ == "__main__":
    for i in range(10):
      result = fibonacci(i)
      print(result)

def fibonacci(n):
  pre = 0
  result = 1
  for _ in range(2, n):
    pre, result = result, pre + result

  return result


if __name__ == "__main__":
    for i in range(10):
      result = fibonacci(i)
      print(result)

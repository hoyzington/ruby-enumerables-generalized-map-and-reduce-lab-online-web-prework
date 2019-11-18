def map(array)
  result = []
  i = 0
  while i < array.size
    result[i] = yield(array[i])
    i += 1
  end
  result
end


def reduce(a, sp = 0)
result = sp
i = 0
while i < a.size
  result = yield(result, a[i])
  if result == !true
    return false
  end
  i += 1
end
if result == 0
  return true
end
result
end

first = ARGV[0]
second = ARGV[1]
op = ARGV[2]


class MyMath

  def sum(a, b)
    puts a.to_f + b.to_f
  end

  def difference(a, b)
    puts a.to_f - b.to_f
  end

  def divide(a, b)
    c = a.to_f / b.to_f;
    puts c
  end

  def multiply(a, b)
    puts a.to_f * b.to_f
  end
end

mth = MyMath.new

if op == "sum"
  mth.sum(first, second)

elsif op == "difference"
  mth.difference(first, second)

elsif op == "divide"
    mth.divide(first, second)

elsif op == "multiply"
    mth.multiply(first, second)

else
  puts op
end

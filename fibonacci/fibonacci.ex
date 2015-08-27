defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)
end

defmodule OptimizedFibonacci do

  def fib(n) do
    a = 0
    b = 1
    for x <- 1..n do
      a = b
      b = a + b
      IO.puts(a)
    end
    a
  end
end

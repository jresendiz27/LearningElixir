ExUnit.start
defmodule TestFibonacci do
  Code.require_file "fibonacci.ex", __DIR__
  use ExUnit.Case

  test "Fibonacci(0) is 0" do
    assert Fibonacci.fib(0) == 0
  end

  test "Fibonacci(2) is 1" do
    assert Fibonacci.fib(2) == 1
  end

  test "Fibonacci(2) is 2" do
    assert Fibonacci.fib(3) == 2
  end

  test "Optimized Fibonacci (4) is 3" do
    assert OptimizedFibonacci.fib(3) == 2
  end
end

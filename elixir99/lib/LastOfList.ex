defmodule LastOfList do
	def last([]), do: nil
	def last([element]), do: element
  def last([_|tail]), do: last(tail)
end

defmodule LastButOne do
	def lastButOne([head|tail]) do
		if length(tail) == 2 do
			tail
		else 
			lastButOne(tail)
		end 
	end 
end
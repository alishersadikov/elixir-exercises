fizz_buzz = fn
  { 0, 0, _ } -> "FizzBuzz"
  { 0, _, _ } -> "Fizz"
  { _, 0, _ } -> "Buzz"
  { _, _, c } -> c
end

IO.puts fizz_buzz.({ 0, 0, 3 })
IO.puts fizz_buzz.({ 0, 2, 3 })
IO.puts fizz_buzz.({ 1, 0, 3 })
IO.puts fizz_buzz.({ 1, 2, 3 })

evaluate = fn
  n -> fizz_buzz.({rem(n, 3), rem(n, 5), n})
end

IO.puts evaluate.(10)
IO.puts evaluate.(11)
IO.puts evaluate.(12)
IO.puts evaluate.(13)
IO.puts evaluate.(14)
IO.puts evaluate.(15)
IO.puts evaluate.(16)


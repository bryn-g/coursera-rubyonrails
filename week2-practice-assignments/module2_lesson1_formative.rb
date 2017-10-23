some_var = "false"
another_var = "nil"

case
when some_var == "pink elephant"
  puts "don't think about the pink elephant!"
when another_var.nil?
  puts "question mark in the method name?"
when some_var == false
  puts "looks like this one should execute"
else
  puts "I guess nothing matched... But why?"
end

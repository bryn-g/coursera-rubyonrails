# grab 23 random elements between 0 and 10000
arr = (1..10000).to_a.sample(23)
p arr

# select only elements that when divided by 3 have a remainder of 0
# using the % (modulus) operator
# using `reject` method filter out anything less than 5000
# and use `sort` and `reverse` methods to sort in descending order

# p arr.select! { |element| element % 3 == 0 }
# p arr.reject! { |element| element < 5000}
# p arr.sort.reverse!

# solution
p arr.select {|element| element % 3 == 0}.reject {|element| element < 5000}.sort.reverse

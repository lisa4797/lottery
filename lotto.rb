def user_numbers(num1, num2, num3, num4, num5, num6)
  num1 = gets.chomp.to_i
  num2 = gets.chomp.to_i
  num3 = gets.chomp.to_i
  num4 = gets.chomp.to_i
  num5 = gets.chomp.to_i
  num6 = gets.chomp.to_i
  user_picks = [num1, num2, num3, num4, num5, num6]
  return user_picks
end

def winning_numbers()
    numbers = *(0..100) 
    randomize = numbers.shuffle
    puts randomize.class
    winning_numbers = [randomize[0], randomize[1], randomize[2], randomize[3], randomize[4], randomize[5]]
    return winning_numbers
end

winning_numbers()
puts winning_numbers

def compare_numbers(user_numbers, winning_numbers)
    final = (users_numbers & winning_numbers)
    count = final.count
    return count
end


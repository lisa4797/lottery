def winning_numbers()
    numbers = *(0..10) 
    randomize = numbers.shuffle
    puts randomize.class
    winning_numbers = [randomize[0], randomize[1], randomize[2], randomize[3], randomize[4], randomize[5]]
    return winning_numbers
end

winning_numbers()
puts winning_numbers

def compare_numbers(num1, num2, num3, num4, num5, num6, wnum1, wnum2, wnum3, wnum4, wnum5, wnum6)
    users_numbers = [num1.to_i, num2.to_i, num3.to_i, num4.to_i, num5.to_i, num6.to_i]
    winning_numbers = [wnum1, wnum2, wnum3, wnum4, wnum5, wnum6]
    final = (users_numbers & winning_numbers)
    count = final.count
    return count
end


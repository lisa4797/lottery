puts "Please enter six numbers from 0 to 100."

def user_numbers()
    user_number1 = gets.chomp.to_i
    user_number2 = gets.chomp.to_i
    user_number3 = gets.chomp.to_i
    user_number4 = gets.chomp.to_i
    user_number5 = gets.chomp.to_i
    user_number6 = gets.chomp.to_i
    user_picks = [user_number1, user_number2, user_number3, user_number4, user_number5, user_number6]
    return user_picks
end

def winning_numbers()
    numbers = [0..100] 
    randomize = 100.times.sort_by {rand}.flatten
    puts randomize.class
    winning_numbers = [randomize[0], randomize[1], randomize[2], randomize[3], randomize[4], randomize[5]]
    return winning_numbers
end

def compare_numbers()
    $user_numbers = user_numbers()
    $winning_numbers = winning_numbers()
    final = []
    $user_numbers.each do |number|
       $winning_numbers.each do |number2|
             if number == number2    
               final.push(number)
           end
       end
   end
   count = final.count
   return count
end
compare = compare_numbers()
puts "The numbers you picked are #{$user_numbers}"
puts "These are todays winning numbers #{$winning_numbers}"
puts "The number of winning_numbers you have #{compare}"
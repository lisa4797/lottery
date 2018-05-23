puts "Please enter six numbers from 0 to 100."

def user_numbers
	user_number1 = gets.chomp.to_i
	user_number2 = gets.chomp.to_i
	user_number3 = gets.chomp.to_i
	user_number4 = gets.chomp.to_i
	user_number5 = gets.chomp.to_i
	user_number6 = gets.chomp.to_i
	user_picks = [user_number1, user_number2, user_number3, user_number4, user_number5, user_number6]
	return user_picks
end 

def winning_numbers 
	numbers = [0..100] 
	6.times.sort_by {rand}
end

def compare_numbers
	user_numbers = user_numbers
	winning_numbers = winning_numbers
	final = []
    your_numbers = [number1, number2, number3, number4, number5, number6]    
         your_numbers.each do |number|
             winning_numbers.each do |number2|
                 if number == number2    
                     final << number
                 end
             end
         end
         count = final.count
         return count
end

 puts "The numbers you picked are #{user_numbers}"
 puts "These are todays winning numbers #{winning_numbers}"
 puts "#{compare_numbers}"
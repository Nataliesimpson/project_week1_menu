

menu = {:name => "Natalie", :loyalty_card_number => 1234, :address => "Bondi Beach", :balance => 25, :americano => 2, :latte => 3}

prompt = "> "

def coffee_menu(menu_hash)
  puts "- Americano: £2"
  puts "- Latte: £3"
  puts "\nPlease enter your selection"
  print "> "
  coffee_answer = gets.chomp
  # print prompt
  
  if coffee_answer == "americano"
    new_balance = menu_hash[:balance] - menu_hash[:americano]
    puts "Coffee purchase success - please come to collection point! Your new balance is £#{new_balance}"
    return new_balance
  elsif coffee_answer == "latte"
    new_balance = menu_hash[:balance] - menu_hash[:latte]
    puts "Coffee purchase success - please come to collection point! Your new balance is £#{new_balance}"
    return new_balance
  else 
  puts "Please enter selection again"
  end 
end

def balance(menu_hash)
  card_balance = menu_hash[:balance]
  puts "Your current balance is #{card_balance}"
end

def add_funds(menu_hash)
end

def change_address(menu_hash)
end


puts "Please enter your name..."
print prompt
answer_name = gets.chomp

puts "Please enter your loyalty card number..."
print prompt
answer_number = gets.to_i

online_menu = true

while (online_menu == true)

  if menu[:name] == answer_name && menu[:loyalty_card_number] == answer_number
    puts "\n- Coffee Menu"
    puts "- Loyalty card balance"
    puts "- Top up card balance"
    puts "- Change delivery address"
    puts "- Exit"
    puts "\nPlease enter your selection"
    print "> "
    selection = gets.chomp
    selection.downcase!
    puts " "

  case selection
    when "coffee menu"
      menu[:balance] = coffee_menu(menu)
    when "loyalty card balance"
      balance(menu)
    when "add funds to card balance"
    when "change delivery address"
    when "exit"
    online_menu = false 
    else
      puts "Sorry incorrect input" 
  end#end of case  


  else
   puts "Sorry, your details are invalid"
   online_menu = false


  end #if 
end #while  

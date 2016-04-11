system 'clear'
puts "How much is the bill?"

bill = gets.chomp.strip.to_f

puts "Would you like to tip \n(A)10%\n(B)15%\n(C)20%\n(D)custom tip\n"


tipmethod = false

until tipmethod

  tip_method = gets.chomp.strip.capitalize

  case tip_method

  when "A"
    tip_percent = 0.10   #added tip_percent here for calc later
    total = bill * 1.10
    tipmethod = true
    # puts total
  when "B"
    tip_percent = 0.15   #added tip_percent here for calc later
    total = bill * 1.15
    tipmethod = true
    # puts total

  when "C"
    tip_percent = 0.20   #corrected to .20 #added tip_percent here for calc later
    total = bill * 1.20  #corrected to .20
    tipmethod = true
    # puts total

  when "D"
    input_correct = false

    until input_correct
      puts "How much would you like to tip? For 16% put 16."
      custom_tip = gets.chomp
      if custom_tip == "0" ||  custom_tip.to_f > 0
        input_correct = true
      end
    end

    tip_percent = custom_tip.to_f/100
    total = bill * tip_percent + bill
    tipmethod = true
    puts "Your total bill is:"
    puts total


  else
    puts "Choose one of the options: \n(A)10%\n(B)15%\n(C)20%\n(D)custom tip\n"
    tipmethod = false
  end
end

puts "Would you like to split the bill? (Yes or No)"

splitquestion = false
until splitquestion
    split_question = gets.chomp.strip.capitalize

    if split_question == "Yes"
      splitquestion = true
      betweenppl = false
      until betweenppl
        puts "Between how many people?"
        num_ppl = gets.chomp.strip.to_f
        # p num_ppl
          if num_ppl.respond_to? :/
            betweenppl = true
          end
        end

        final_balance = total / num_ppl
        # puts "Each pays #{final_balance}"
    elsif split_question == "No"
      splitquestion = true
      puts "Your total is #{total}"
      final_balance = total
    else
      puts "Choose yes or no."
    end
end

bill = total

if betweenppl
  bill_amt = bill / num_ppl
else
  bill_amt = bill
end


tip_amt = bill * tip_percent
each_tip = tip_amt/num_ppl
total_bill = bill + tip_amt
# my_bill = total_bill / num_ppl

final_balance = total
my_bill = final_balance / num_ppl

tip_pcnt = tip_percent * 100

width = 50
# tip_pcnt_len = width - (tip_pcnt.length)
# puts tip_pcnt_len
x = 32
puts "=" * x
puts "  Bill Amount ...... #{'%.02f' % bill}"
puts "-" * x
if tip_pcnt> 0
  puts "  Thank you for your #{'%.0f' % tip_pcnt}% tip!"
else
  puts "  No tip included."
end
puts "  Tip amount ......  #{'%.02f' % tip_amt}"
puts "=" * x
puts "  Total Bill ......  #{'%.02f' % total_bill}"
puts ""
puts "  Splitting the bill #{num_ppl} ways:"
puts "-" * x
puts "  Each person's bill   $#{'%.02f' % bill_amt}"
puts "  Each person tip #{'%.0f' % tip_pcnt}%  $ #{'%.02f' % each_tip}" #{}" (#{'%.0f' % tip_pcnt}%)"
puts "  Each person's total  $#{'%.02f' % my_bill}"
puts "=" * x


# $#{'%.02f' % total}

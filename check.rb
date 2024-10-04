# The algorithm is:

#1. Take each digit, from left to right and multiply them alternatively by 1 and 3
#3. Take mod 10 of the summed figure
#4. Subtract 10 and if the end number is 10, make it 0

def find_check_digit(barcode)
  sum = 0

  # Step 1: Multiply  alternatively by 1 and 3
  barcode.to_s.chars.each_with_index do |digit, i|
    multiplier = (i % 2 == 0) ? 1 : 3
    # Step 2: Sum these numbers. 
    sum += digit.to_i * multiplier
  end

  # Step 3: Take mod 10 of the sum
  mod_value = sum % 10
  
  # Step 4: Subtract mod_value from 10, if it's 10, set it to 0
  check_digit = (10 - mod_value) % 10

  return check_digit
end

# Test example for 978014300723
puts "Check digit is: " + find_check_digit(978014300723).to_s

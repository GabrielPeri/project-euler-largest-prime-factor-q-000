class LargestPrimeFactor

  def largest_prime_factor(input)
    number = 2
    prime_total = 0
    prime_array = []
    test = input

    until prime_total >= input
      if test % number == 0
        prime_array << number
        prime_total = prime_array.inject(:*)
        test = test / number
      elsif test % number != 0
        number +=1
      end
    end

    return prime_array[-1]
  end
end
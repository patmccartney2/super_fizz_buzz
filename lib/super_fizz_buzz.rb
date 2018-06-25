class SuperFizzBuzz

  def initalize
  end

  def output(number)
      if (number % 3 == 0) && (number % 5 == 0) && (number % 7 == 0)
        "SuperFizzBuzz"
      elsif (number % 3 == 0) && (number % 7 == 0)
        "SuperFizz"
      elsif (number % 5 == 0) && (number % 7 == 0)
        "SuperBuzz"
      elsif (number % 3 == 0) && (number % 5 == 0)
        "FizzBuzz"
      elsif number % 3 == 0
        "Fizz"
      elsif number % 5 == 0
        "Buzz"
      elsif number % 7 == 0
        "Super"
      else
        number
      end
    end

    def output_range(num_1, num_2)
      result = []
      array = (num_1..num_2).to_a
      array.map do |number|
        output(number)
      end
    end
end

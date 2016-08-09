require "tanaka_practice/version"

module TanakaPractice

  class Main
    def odd?(n)
      if (n % 2) == 1
        return true
      else
        return false
      end
    end

    def even?(n)
      return ! odd?(n)
    end

    def check_number?(n)
      if(n >= 1000 && n<= 9999 && n % 2)
         return true
      else
         return false
      end
    end

    def enough_length?(t)
      if(t.length >=3 && t.length <=8)
        return true
      else 
        return false
      end
    end

    def divide(n1,n2)
      n3 = n2 / n1
      return n3
    end

    def fizz_buzz(n)
      if n % 3 == 0 && n % 5 == 0
        return "FizzBuzz"
      elsif n % 5 == 0
        return "Buzz"
      elsif n % 3 == 0
        return "Fizz"
      else
        return ""
      end
    end
   
    def hello
     puts "Hello"
    end
  end
end

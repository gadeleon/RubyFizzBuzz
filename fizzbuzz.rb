# FizzBuzz

class FizzBuzz
  def initialize(maxnum, fnum, snum)
    @maxnum = maxnum + 1
    @fizz = fnum
    @buzz = snum
    @fizbuzz = calcFizzBuzz(@fizz,@buzz)
  end

  def Fizzorbuzz(num)
    # Least Common Multiple
    if num % @fizbuzz == 0
      return "FizzBuzz"
      # The Rest
    elsif num % @fizz == 0
      return "Fizz"
    elsif num % @buzz == 0
      return "Buzz"
    else
      return num
    end
  end
  def calcFizzBuzz(fnum, snum)
    # Quit if either number is a multiple of the other
    if fnum % snum == 0 || snum % fnum == 0
      if fnum > snum
        raise Exception.new "Cannot fizzbuzz with this pair of numbers"
      end
      raise Exception.new "Cannot fizzbuzz with this pair of numbers"
      return snum
      # If mod 0 with two numbers doesn't work, LCM is the two multiplied
    else return fnum * snum
    end

  end

  def GetFizzBuzz()
    # Prints out stored FizzBuzz
    rng = 1
    until rng == @maxnum
      puts Fizzorbuzz(rng)
      rng += 1
    end
  end
end

if __FILE__ == $0
  fb = FizzBuzz.new(100,3,7)
  fb.GetFizzBuzz()
end

# FizzBuzz

class FizzBuzz
  def initialize(maxnum, fnum, snum)
    @maxnum = maxnum + 1
    @fizz = fnum
    @buzz = snum
    @fizbuzz = calcFizzBuzz(@fizz,@buzz)
  end

  def fizzorbuzz(num)
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
    # Quit if either number is a multiple of the other.
    # Least common multiple should be fnum * snum
    if fnum % snum == 0 || snum % fnum == 0
      raise Exception.new 'Cannot fizzbuzz with this pair of numbers'
    else return fnum * snum
    end

  end

  def GetFizzBuzz()
    # Plays FizzBuzz with initialized params
    rng = 1
    until rng == @maxnum
      puts fizzorbuzz(rng)
      rng += 1
    end
  end
end

if __FILE__ == $0
  fb = FizzBuzz.new(100,3,7)
  fb.GetFizzBuzz()
end

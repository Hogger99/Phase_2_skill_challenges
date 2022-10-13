class GrammarStats
  def initialize
    @true = 0.0
    @total = 0.0
    # ...
  end

  def check(text)
    text_arr = text.split(' ')
    if text == ""
      @total += 1
      return false
    end
    if text_arr.first == text.split(' ').first.capitalize
      if text_arr[-1].chars.pop.include?(".")
        @true += 1.0
        @total += 1.0
        return true
      else
        @total += 1.0
        return false
      end
    else 
      @total += 1.0
      return false
    end
  end

  def percentage_good
    percentage = (@true / @total) * 100
    return percentage
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
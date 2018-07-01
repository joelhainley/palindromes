class PalindromeTools

  def self.is_palindrome(start, finish, charArray)
    if(charArray == nil || charArray == "")
      return false
    end

    if charArray.length == 1
      return true
    end

    if start == finish
      return true
    end

    if(charArray[start] == charArray[finish])
      # in the event they are side by side
      if((start + 1) == finish)
        return true
      end

      nextStartPos = start+1
      nextFinishPos = finish-1

      return(PalindromeTools.is_palindrome(nextStartPos,nextFinishPos, charArray))
    else
      return false
    end
  end

  def self.might_be_palindrome(start, finish, charArray)
    ## if the length of the string is even then there should be even number of each character
    #
    ## if it has an odd length then there should be only a single orphan
    charCount = Hash.new(0)

    charArray.each do |char|
      charCount[char] = charCount[char] + 1
    end

    lengthIsEven = (charArray.length % 2).even?

    puts charCount.inspect()

    oddCount = 0
    itemCount = 0

    charCount.keys.each do |key|
      if charCount[key].odd?
        oddCount = oddCount + 1
      end

      if(lengthIsEven && oddCount > 0)
        puts "too many odd values..for an even length string"
        return false
      end

      if(!lengthIsEven && oddCount > 1)
        puts "too many odd values for an odd length string"
        return false
      end
    end

    return true
  end

  def self.find_palindromes
    charPositions = Hash.new([])

    
  end
end

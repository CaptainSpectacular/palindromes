# Part 1: A palindrome is a sequence of characters that is the same backwards or forward.
# Write a function that tests a string passed in for whether it is a palindrome or not.
# Test strings: aa, aba, zboba, zamanaplanacanalpanamaxbobx, amanaplanacanalpanama

#Part 2: Write a function that finds and returns all the palindrome(s) in a string. 
# A single character is not considered a palindrome.
# Test: 'momyyydad' -> ['mom', 'yy', 'yyy', 'yy', 'dad']

class Palindrome

  def palindrome?(word)
    word == word.reverse
  end

  def all_palindromes(string)
    paindromes = []
    #n alL_subs = combos(string)
    combos(string)
    # all_subs.select { |string| palindrome?(string) }
  end

  def substrings(string)
    result = []
    chars = string.chars
    start_index = 0
    end_index = string.length - 1
  
    (start_index..end_index).each do |n|
      result << string[n..end_index]
    end
  
    until end_index == 0
      result << string[0..end_index]
      end_index -= 1
    end
    # Iterate over the string n times, where n is the length of the string
      # iterate position n within string to the end string
  
     # m mo mom om m
    result
  end
end

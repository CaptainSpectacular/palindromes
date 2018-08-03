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
    substrings = substrings(string)
    substrings.select { |string| palindrome?(string) }.sort
  end

  def substrings(string)
    # Taken from an algorithm written in C
    result = []

    string.size.times do |n|
      (0..n).each do |item|
        result << string[item..n]
      end
    end
  
    result.sort.reject { |x| x.size == 1}
  end

  def alternate_substrings(string)
    result = []
    chars = string.chars
    (2..(string.size)).each do |n|
      chars.each_cons(n).each do |combo|
        result << combo.join("")
      end
    end
    result.sort
  end
end

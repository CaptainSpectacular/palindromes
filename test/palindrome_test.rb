require "minitest/autorun"
require "minitest/pride"
require "./lib/palindrome"

class PalindromeTest < MiniTest::Test
  def test_initialization
    p = Palindrome.new

    assert_instance_of Palindrome, p
  end

  def test_palindrome_method
    p = Palindrome.new
    
    strings = %w[aa aba zboba zamanaplanacanalpanamaxbobx amanaplanacanalpanama]
    values = [true, true, false, false, true]

    strings.each_with_index do |string, index|
      assert_equal values[index], p.palindrome?(string)
    end
  end

  def test_all_substrings_method_with_3_char_strings
    p = Palindrome.new
    substrings = %w[va var ar].sort

    assert_equal substrings, p.substrings("var")
  end

  def test_all_substrings_method_with_4_char_strings
    p = Palindrome.new
    substrings = %w[cl cla clam la lam am].sort

    assert_equal substrings, p.substrings("clam")
  end 

  def test_all_palindromes_method
    p = Palindrome.new
    expected = %w[mom yy yyy yy dad].sort

    assert_equal p.all_palindromes("momyyydad"), expected

  end
end

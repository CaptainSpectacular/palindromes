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
    substrings = %w[v va var ar r]

    assert_equal substrings, p.substrings("var")
  end

  def test_all_substrings_method_with_4_char_strings
    p = Palindrome.new
    substrings = %w[c cl cla clam l la lam am m]

    assert_equal substrings, p.substrings("clam")
  end
end

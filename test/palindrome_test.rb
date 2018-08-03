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

end

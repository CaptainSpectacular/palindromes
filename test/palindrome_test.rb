require "minitest/autorun"
require "minitest/pride"
require "./lib/palindrome"

class PalindromeTest < MiniTest::Test
  def test_initialization
    p = Palindrome.new

    assert_instance_of Palindrome, p
  end
end

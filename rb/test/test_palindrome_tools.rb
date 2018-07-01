require 'test/unit'
require_relative '../lib/palindrome_tools'

class TestPalindromeTools < Test::Unit::TestCase
  def test_empty_p
    assert_false(PalindromeTools.is_palindrome(0,0,''))
  end

  def test_single_letter_p
    assert_true(PalindromeTools.is_palindrome(1,1,'a'.split('')), "abc")
    assert_false(PalindromeTools.is_palindrome(1,2,'abc'.split("")), "2 chars")
  end

  def test_multi_letter_p
    assert_true(PalindromeTools.is_palindrome(0, 4, "abcba".split("")), "multi letter palindrome 1: failure")
    assert_true(PalindromeTools.is_palindrome(0, 5, "abccba".split("")), "multi letter palindrome 2: failure")
    assert_true(PalindromeTools.is_palindrome(1, 4, "abccba".split("")), "multi letter palindrome 3: failure")
  end

  def test_might_be_palindrome
    assert_false(PalindromeTools.might_be_palindrome(0,2,'abc'.split("")), "#1")
    assert_true(PalindromeTools.might_be_palindrome(0,0,'a'.split('')), "#2")
    assert_true(PalindromeTools.might_be_palindrome(0, 6, "abccba".split("")), "#3")
    assert_true(PalindromeTools.might_be_palindrome(0, 6, "aabbccd".split("")), "#4")
    assert_false(PalindromeTools.might_be_palindrome(0, 7, "aabbccde".split("")), "#5")
  end
end
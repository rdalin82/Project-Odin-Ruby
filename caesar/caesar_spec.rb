require 'minitest/autorun'
require './project1-Caesar-cipher'

describe "caesar cipher" do
  it "should return correct shift" do
    caesar_cipher("a", 1).must_equal "b"
   end
  it "should react to spaces correctly" do
    caesar_cipher("a a", 1).must_equal "b b"
  end
  it "should return capital letters when appropriate" do 
    caesar_cipher("A", 1).must_equal "B"
  end

  it "should keep correct case" do
    caesar_cipher("AaAaa", 1).must_equal "BbBbb"
  end

  it "should ignore numbers" do 
    caesar_cipher("1", 1).must_equal "1"
  end
end

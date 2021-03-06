require 'helper'

class TestStupidFormatter < Test::Unit::TestCase
  context "After configuring the StupidFormatter.chain to [StupidFormatter::Erb, StupidFormatter::RDiscount]" do
    setup do
      StupidFormatter.chain = [StupidFormatter::Erb, StupidFormatter::RDiscount]
    end
    
    should "return StupidFormatter::Erb for the first chain item" do
      assert_equal StupidFormatter::Erb, StupidFormatter.chain[0]
    end
    
    should "return StupidFormatter::RDiscount for the last chain item" do
      assert_equal StupidFormatter::RDiscount, StupidFormatter.chain[-1]
    end
    
    should("have 2 chain items") { assert_equal 2, StupidFormatter.chain.length }
    
    context "when I put a complex erb/coderay/markdown fixture through the formatter" do
      setup do
        @result = StupidFormatter.result(fixtures(:erb_coderay_markdown_example))
      end
      
      should "render as in the expectation fixture" do
        assert_equal fixtures(:erb_coderay_markdown_expectation), @result
      end
    end
    
    context "when I call formatted on a complex fixture string" do
      setup do
        @result = fixtures(:erb_coderay_markdown_example).formatted
      end
      
      should "render as in the expectation fixture" do
        assert_equal fixtures(:erb_coderay_markdown_expectation), @result
      end
    end
  end
  
end

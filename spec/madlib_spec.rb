require 'madlib'

describe Madlib do
  describe "Simple Interpolation" do
    subject { Madlib.new("Our favorite language is also a ((gemstone))")}

    it "should read string and build a list of questions to ask" do
      subject.questions.should include("Please give me a gemstone")
    end

    it "should have placeholders for the various types of questions" do
      subject.placeholders.should include("gemstone")      
    end

    it "should accept answers for a list of questions" do
      subject.answer_question "gemstone", "ruby"
      subject.result.should == "Our favorite language is also a ruby"
    end
  end
end

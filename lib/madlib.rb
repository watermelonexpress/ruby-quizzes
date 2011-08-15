class Madlib
  attr_accessor :questions, :string, :placeholders

  def initialize string
    @string = string
    @questions = []
    @placeholders = []
  end

  def answer_question placeholder, answer
  end
end

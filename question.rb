class Question
  def initialize
    @answer = rand(10...20)
  end
  def new_question
    val = rand(1..10)
    "what is #{val} + #{@answer - val}"
  end
  def verify(ans)
    ans == @answer.to_s    
  end
end

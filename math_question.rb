class Question

  def initialize(number1, number2) 
    @number1 = number1
    @number2 = number2
    @answer = number1 + number2
  end

  def attr_reader(name)
    puts "#{name}: What does #{@number1} plus #{@number2} equal?"
    return @answer
  end
end
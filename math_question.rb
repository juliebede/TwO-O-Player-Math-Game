class Question

  def initialize(number1, number2) 
    @number1 = number1
    @number2 = number2
    @answer = number1.to_i + number2.to_i
  end

  def attr_reader(name)
    puts "#{name}: What does #{@number1} plus #{@number2} equal?"
    return @answer
  end
end
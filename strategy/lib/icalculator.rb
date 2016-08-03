class ICalculator

  attr_reader :operator, :operand_1, :operand_2

  def initialize (operand_1, operand_2, operator)
    @operand_1 = operand_1
    @operand_2 = operand_2
    @operator = operator
  end

  def calculate
    #Object.const_get("Calculators::#{operator.to_s.capitalize}Operator")
    Calculators.const_get("#{operator.to_s.capitalize}Operator")
      .new(self).execute
  end
end

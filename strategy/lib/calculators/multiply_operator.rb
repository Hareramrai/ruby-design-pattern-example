module Calculators

  class MultiplyOperator
    extend Forwardable

    def_delegators :@context, :operand_1, :operand_2

    def initialize context
      @context = context
    end

    def execute
      operand_1 * operand_2
    end
  end

end

module Speccr
  class ExpectationTarget
    def initialize(@target)
    end

    def to(@matcher)
      if @matcher.match @target
        success
      else
        failure
      end
    end

    def not_to(@matcher)
      if @matcher.match @target
        failure
      else
        success
      end
    end

    def to_not(matcher)
      not_to(matcher)
    end

    private def success
      puts "SUCCESS"
    end

    private def failure
      puts "FAILURE"
    end
  end
end

module Speccr
  class Test
    def initialize(@context, @description, &@blk)
    end

    def run
      instance_eval @blk
    end

    def instance_eval
      with self yield
    end

    def expect(object)
      ExpectationTarget.new(object)
    end

    def eq(expected)
      Matcher::Equality.new(expected)
    end
  end
end

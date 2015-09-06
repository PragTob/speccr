module Speccr
  class Context
    def initialize(@parent, @description)
      @before = [] of Proc(-> Nil)
      @after = [] of Proc(-> Nil)
    end

    def run(&blk)
      with self yield
    end

    def describe(description, &blk)
      self.class.new self, description, blk
    end

    def it(description, &blk)
      with self yield
    end

    def expect(object)
      ExpectationTarget.new(object)
    end

    def eq(expected)
      Matcher::Equality.new(expected)
    end

    def before(&blk)
      @before << blk
    end

    def after(&blk)
      @after << blk
    end
  end
end

module Speccr
  class Context
    def initialize(@parent, @description, &blk)
      @tests = [] of Test
      @before = [] of Proc
      @after = [] of Proc
      with self yield
    end

    def describe(description, &blk)
      self.class.new self, description, blk
    end

    def it(description, &blk)
      @tests << Test.new self, description, blk
    end

    def run
      @tests.each do |test|
        test.run
      end
    end

    def before(&blk)
      @before << blk
    end

    def after(&blk)
      @after << blk
    end
  end
end

module Speccr
  module Matcher
    class Equality < Base
      def match(actual)
        actual == @expected
      end
    end
  end
end

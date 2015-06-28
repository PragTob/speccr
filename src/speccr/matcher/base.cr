module Speccr
  module Matcher
    class Base
      def initialize(@expected)
      end

      def match
        fail "implement in sub class"
      end
    end
  end
end

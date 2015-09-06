require "./speccr/context"
require "./speccr/expectation_target"
require "./speccr/matcher"


module Speccr
  def self.describe(description, &blk)
    Context.new(nil, description).run blk
  end
end

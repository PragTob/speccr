require "./speccr/test"
require "./speccr/context"
require "./speccr/expectation_target"


module Speccr
  def self.describe(description, &blk)
    Context.new description, blk
  end
end

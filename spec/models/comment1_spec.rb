require "spec_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Comment do
    
    it { should belong_to(:article) }
    
end

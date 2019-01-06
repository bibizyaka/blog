require "spec_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Article do
    
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it { should have_many(:comments)}
    
end

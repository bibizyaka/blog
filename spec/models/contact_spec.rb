require "spec_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Contact do
    
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:text) }
    
end

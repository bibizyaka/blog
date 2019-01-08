require "spec_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Comment do
   
   #validations
    describe "comment should have no more then 400 chars" do

      it { should validate_length_of(:body).is_at_most(400) }
   #      #   article = create(:article, title: "Lorem ipsum dolor sit amet ")         
    end #describe

   #association
   it { should belong_to(:article) }
    
end #describe Comment

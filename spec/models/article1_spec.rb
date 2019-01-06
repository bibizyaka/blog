require "spec_helper"
require 'support/factory_girl'

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Article do
    describe "validations" do
    
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:text) }
    end
    
    describe "associations" do
        it { should have_many(:comments)}
    end

   describe "#subject" do

     it "returns the article title" do
       #creating object in a tricky way
       # create method requires gem = factory girl
       article = article.create(:article, title: "Lorem ipsum")
        
        #assert - checking  
       expect(article.subject).to eq "Lorem ipsum"
     end
   end

   end #Article

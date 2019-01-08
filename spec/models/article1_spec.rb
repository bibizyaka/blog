require "spec_helper"
require 'support/factory_girl'

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

describe Article do

    describe "validations" do
    
      it { should validate_presence_of(:title) }
      it { should validate_length_of(:title) }
      it { should validate_presence_of(:text) }
      it { should validate_length_of(:text) }
    
    end #describe
    
    describe "associations" do
    
        it { should have_many(:comments) }
    
    end

    describe "#subject" do

     it "returns the article title" do
       #creating object in a tricky way
       # create method requires gem = factory girl
       article = create(:article, title: "Lorem ipsum")
        
        #assert - checking  
       expect(article.subject).to eq "Lorem ipsum"
     end #do

     # it "returns error on article length" do
     
     #   article = create(:article, title: "Lorem ipsum dolor sit amet", text: "aaaa" )
        
     #    #assert - checking  
     #   expect(article.errors).to eq "title is too long (maximum is 14 characters)"
     # end #do

    end #describe

    describe "#last_comment" do
      it "returns the last comment" do
        # creating article this time with comments
        article = create(:article_with_comments)
        
        #assert
        expect(article.last_comment.body).to eq "Comment body 3"
      end #do
    end #describe

    describe "article should have no more then 140 chars" do

       it { should validate_length_of(:title).is_at_most(140) } 
            
    end #describe
    describe "text should have no more then 400 chars" do

       it { should validate_length_of(:text).is_at_most(400) } 

    end

end #Article

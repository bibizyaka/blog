FactoryGirl.define do
   factory :comment do #We create factory named article and in that model will define title and text. creation itself of that model is in article1_spec.rb file (create method)
     author "Mike"
     #body "Mike has commented"
     sequence(:body) {|n| "Comment body #{n}"}
   end
end
FactoryGirl.define do
   factory :comment do #We create factory named comment
     author "Mike"
     #body "Mike has commented"
     sequence(:body) {|n| "Comment body #{n}"}
   end
end
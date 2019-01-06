FactoryGirl.define do
   factory :article do #We create factory named article and in that model will define title and text. creation itself of that model is in article1_spec.rb file (create method)
     title "Article title"
     text "Article text"
   end
end
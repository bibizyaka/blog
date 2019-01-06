FactoryGirl.define do
   factory :article do #We create factory named article and in that model will define title and text. creation itself of that model is in article1_spec.rb file (create method)
     title "Article title"
     text "Article text"
       #creating factory with name: article_with_comments
       #for creating article with number of comments
     factory :article_with_comments do
       after :create do |article, evaluator|
         create_list :comment, 3, article: article
       end 
     end

   end
end
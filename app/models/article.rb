class Article < ApplicationRecord
   has_many :comments
   # belongs_to :user

   validates :title, presence: true
   validates :text, presence: true

 def subject 
   title # return title
 end
 def last_comment
    comments.last
 end

end #class

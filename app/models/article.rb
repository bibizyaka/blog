class Article < ApplicationRecord
   has_many :comments
   # belongs_to :user

   validates :title, presence: true
   validates :title,  length: { maximum: 140 }
   validates :text, presence: true
   validates :text,  length: { maximum: 400 }

 def subject 
   title # return title
 end
 def last_comment
   comments.last
 end

end #class

class CommentsController < ApplicationController
   protect_from_forgery 
   before_action :authenticate_user!, :only => [:create]

    def create
        
      @article = Article.find(params[:article_id])
      if @article.comments.create(comment_params)
         
         redirect_to @article
      else 

        redirect_to 'www.google.com'
      end

    end #create
    private

    def comment_params

      params.require(:comment).permit(:author, :body)
    end

  



end #class

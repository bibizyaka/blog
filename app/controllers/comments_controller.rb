class CommentsController < ApplicationController

   protect_from_forgery 
   before_action :authenticate_user!, :only => [:create]

    # def new 
    #  #  @article = Article.find(params[:article_id])
    #    @comment = @article.comments.build #(comment_params)
    # end
    def create
      
      # @article = Article.find(params[:article_id])
      # @comment = @article.comments.build(comment_params)
      
      @article = Article.find(params[:article_id])
      if @article.comments.create(comment_params)
      #if @comment.create(comment_params)
      # if @comment.save #(comment_params)
         
           redirect_to @article, notice: "Create success!"
      else 
            render "new"
      end

    end #create

    private

       def comment_params

         params.require(:comment).permit(:author, :body)
       end

end #class

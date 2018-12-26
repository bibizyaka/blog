class ArticlesController < ApplicationController
   def new
   end

   def create
      #render plain: params[:article]
      @article = Article.new(article_params)
      if @article.save
          #nothing...cause already saved in if statement
      else
           render action: 'new'
      end
    end #create

    private

       def article_params

         params.require(:article).permit(:title, :text)          
       end
end #class

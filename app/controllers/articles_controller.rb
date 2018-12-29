class ArticlesController < ApplicationController
   
   def index
   
       @article = Article.all
      
   end

   def show 
      @article = Article.find(params[:id])
   end

   def new
   end

   def create
      #render plain: params[:article]
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article
          #nothing...cause already saved in if statement
      else
           render action: 'new'
      end
    end #create
   
   def edit # for loading the record in view for update
      @article = Article.find(params[:id])
   end #edit

   def update
      @article = Article.find(params[:id])
      if @article.update(article_params)
         redirect_to @article
      else
          render action: 'edit'
      end

   end# update

    private

       def article_params

         params.require(:article).permit(:title, :text)          
       end



end #class

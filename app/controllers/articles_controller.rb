class ArticlesController < ApplicationController
   protect_from_forgery 
   before_action :authenticate_user!

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

   def destroy

      @article = Article.find(params[:id])
      @article.destroy
      redirect_to @article, notice: "Delete success"
      
   end

   private

      def article_params

         params.require(:article).permit(:title, :text, :id, :created_at, :updated_at)          
      end


end #class

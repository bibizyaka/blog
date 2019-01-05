class ArticlesController < ApplicationController

   protect_from_forgery 
   before_action :authenticate_user!, :only => [:new, :create]

   def index

       @article = Article.all    
   end

   def show

      @article = Article.find(params[:id])
   end

   def new
   end

   def create
      #render plain: params[:article]\
     # @user = User.find(params[:id])
     # if @user.articles.create(comment_params)
      #@user = User.article
      #raise params.inspect
       @article = Article.new(article_params)
       if @article.save
     
           redirect_to @article, notice: "Create success"
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
    
         redirect_to @article, notice: "Update success" 
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
                                                        #user_id 
         params.require(:article).permit(:title, :text, :userid)          
      #   raise params.inspect

      end


end #class

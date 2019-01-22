class ArticlesController < ApplicationController
	def new
		@article = Article.new
    end

    def create
       # render plain: params[:article].inspect 
       @article = Article.new(article_params)
       if @article.save
       	 #do something
       	 flash[:notice] = "Your article was successfully created !"
       	 redirect_to article_path(@article)
       	else
       		render 'new'
       	end
       #@article.save
       #redirect_to articles_path(@article)
    end
    def index
    	
    end


    def show
    	@article = Article.find(params[:id])
    end

    private 
    def article_params
    	params.require(:article).permit(:title , :description)
    end

end
class ArticlesController < ApplicationController

    def new 
        @article = Article.new
    end


    def create 
    @article = Article.new(article_params)
    if @article.save
        flash[:notice] = "Article was successfully created"
    else
        render 'new'
    end
    #render text: params[:article].inspect

    end
    
    def show
    @article = Article.find(article_params[:id])
    end 
    
        


private 

def article_params
    params.require(:article).permit(:title, :description)
end
end



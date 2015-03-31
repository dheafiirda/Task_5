class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def delete
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def param_article
  	params.require(:article).permit(:article_id, :title, :content, :status)
  end
end

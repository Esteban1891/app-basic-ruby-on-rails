class ArticlesController < ApplicationController


  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    p "#{@article.persisted?}"
  end


  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

  def new
    @article = Article.new
    @article.title = 'Article'
  end

  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content])
    #render json: @article
  end
end

class ArticlesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "Great! Your post has been created!"
      redirect_to root_path
    else
      flash.now[:error] = "Rats! Fix your mistakes, please."
      render :new
    end
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end

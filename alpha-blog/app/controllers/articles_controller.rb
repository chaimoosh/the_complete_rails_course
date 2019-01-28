class ArticlesController < ApplicationController
  before_action  :set_article, only: [:edit, :update, :show, :destroy]
  def index 
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new 
    @article = Article.new
  end

  def create 
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article was succesfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show 
    set_article
  end 

  def edit
    set_article
  end

  def update 
    set_article
    if @article.update(article_params)
      flash[:success] = "Article was succesfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end 
  end 

  def destroy 
    set_article
    @article.destroy
    flash[:danger] = "Article was succesfully deleted"
    redirect_to articles_path
  end 

  private

    def article_params
      params.require(:article).permit(:title, :description)
    end

    def set_article
      @article = Article.find_by(id: params[:id])
    end
end
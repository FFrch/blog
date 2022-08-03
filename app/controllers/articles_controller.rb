class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def history
    # Identifier tous les articles
    # Identifier toutes les années de publication au sein de ces articles
    # piur chaque année de publication, afficher les articles publiés
    @articles = Article.all

    @years = []
    Article.pluck(:created_at).each do |year|
      @years << year.strftime('%Y')
    end
    @years = @years.uniq.reverse
  end

  private

  def article_params
    params.require(:article).permit(:date, :title, :content)
  end
end

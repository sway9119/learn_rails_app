class ModelController < ApplicationController
  def attr_names
    render plain: Article.attribute_names
  end
  
  def article_num2
    @articles = Article.num2
    render "articles/index", collection: @artciles
  end

  def article_num2_limit1
    @articles = Article.num2_limit1
    render "articles/index", collection: @artciles
  end

  def article_num2_limit
    @articles = Article.num2_limit(1)
    render "articles/index", collection: @artciles
  end

end

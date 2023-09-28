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

  def transact
    # モデル名.トランザクションのブロックで一連の処理を一つの処理とする
    Article.transaction do
      article1 = Article.new({title: "タイトル20", content: "本文20"})
      article1.save!
      # 意図的に例外を発生させる（トランザクションをロールバックさせるため）
      raise 'データ登録時に問題が発生しました。'
      article2 = Article.new({title: "タイトル21", content: "本文21"})
      article2.save!
    end
    render plain: 'トランザクション処理は成功しました。'
    
    # ロールバック時の処理
  rescue => e
    render plain: '例外発生: ' + e.message
  end

  def raw_sql
    @article = ActiveRecord::Base.connection.execute('SELECT * FROM articles WHERE id = 1')
    render json: @article
  end

end

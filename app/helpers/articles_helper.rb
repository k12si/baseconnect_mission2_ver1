module ArticlesHelper
  def set_ranking_data

    # pv数順に記事id取得
    ids = REDIS.zrevrangebyscore "articles/all", "+inf", 0, :with_scores => true

    @ranking_articles = [] # [article , pv]
    ids.each do |article_id|
      @ranking_articles.push([Article.find(article_id[0]), article_id[1]])
    end
    return @ranking_articles

  end
end

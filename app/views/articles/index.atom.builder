atom_feed do |feed|
  feed.title('新着フィード')
  feed.update(@articles.last.created_at)
  @articles.each do |article|
    feed.entry(article,
      published: article.published,
      updated: article.updated_at
    ) do |entry|
      entry.title(article.title)
      entry.content("#{article.updated_at} 公開")
    end
  end
end

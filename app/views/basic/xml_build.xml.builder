xml.article(id: @article.id) do
  xml.title(@article.title)
  xml.content(@article.content)
  xml.published(@article.published)
end
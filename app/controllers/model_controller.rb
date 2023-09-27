class ModelController < ApplicationController
  def attr_names
    render plain: Article.attribute_names
  end

end

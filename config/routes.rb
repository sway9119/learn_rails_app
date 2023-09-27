Rails.application.routes.draw do
  resources :articles
  get 'basic/name'
  get 'basic/req_headers'
  get 'basic/render_inline'
  get 'basic/render_xml'
  get 'basic/render_json'
  get 'basic/xml_to_json'
  get 'basic/res_head'
  get 'basic/res_redirect'
  get 'basic/xml_build/:id', to: 'basic#xml_build'
  get 'basic/redirect_flash'
  get 'basic/redirect_flash2'
  get 'info/index'
  get 'model/attr_names'
  get 'model/article_num2'
  get 'model/article_num2_limit1'
  get 'model/article_num2_limit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

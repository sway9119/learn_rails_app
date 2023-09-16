Rails.application.routes.draw do
  get 'basic/name'
  get 'basic/req_headers'
  get 'basic/render_inline'
  get 'basic/render_xml'
  get 'basic/render_json'
  get 'basic/xml_to_json'
  get 'basic/res_head'
  get 'info/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

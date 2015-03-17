set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

ignore 'images/*.sketch'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
end

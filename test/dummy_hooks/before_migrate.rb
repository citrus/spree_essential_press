# install spree and migrate db
run "bundle exec rails g spree:site"
run "bundle exec rails g spree_essentials:press"

# remove all stylesheets except core  
%w(admin store).each do |ns|
  js  = "app/assets/javascripts/#{ns}/all.js"
  css = "app/assets/stylesheets/#{ns}/all.css"
  remove_file js
  remove_file css
  template "#{ns}/all.js", js
  template "#{ns}/all.css", css
end

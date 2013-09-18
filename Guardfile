# Compile stylesheets
guard 'compass', :configuration_file => "config/compass.rb" do
  watch(/^assets\/sass\/(.*)\.scss/)
end

guard 'coffeescript', :input => 'assets/coffeescripts', :output => 'javascripts' do
  watch(%r{coffeescripts/\*\.coffee})
end
 
# guard 'process', :name => 'Minify CSS', :command => 'juicer merge stylesheets/application.css --force -c none' do
#   watch %r{stylesheets/application\.css}
# end
 
# guard 'process', :name => 'Combine Javascript from CoffeeScript', :command => 'coffee -cbj javascripts/application.js assets/coffeescripts/' do
#   watch %r{assets/coffeescripts/.+\.coffee}
# end
 
# guard 'process', :name => 'Minify application javascript', :command => 'juicer merge javascripts/application.js --force -s' do
#   watch %r{javascripts/application\.js}
# end
 
# Watch for modifications in application.css and application.js 
# and reload the browser if so
guard 'livereload', :apply_js_live => true, :apply_css_live => true do
  watch(%r{stylesheets/application\.css})
  watch(%r{javascripts/application\.js})
end
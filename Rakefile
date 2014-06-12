require "bundler/gem_tasks"

task default: :update_pure

desc "Update Pure library using bower"
task :update_pure do
  sh "rm -r bower_components/" if Dir.exists?("bower_components")
  sh "rm -r app/assets/stylesheets/*" if File.exists?("pure.css")
  sh "bower install"
  sh "cp -r bower_components/pure/ app/assets/stylesheets"
  sh "rm -r bower_components/"
  puts "Update Pure library"
end


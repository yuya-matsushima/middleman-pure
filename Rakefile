require "bundler/gem_tasks"

task default: :update_pure

bower_dir = 'bower_components/'
pure_dir  = bower_dir + 'pure/'
css_dir   = 'app/assets/stylesheets/'

desc "Update Pure library using bower"
task :update_pure do
  sh "rm -r #{bower_dir}" if Dir.exists?(bower_dir)
  sh "rm -r #{css_dir}*" if File.exists?(File.join(css_dir, 'pure.css'))

  puts '=== bower install ==='
  sh "bower install"

  puts '=== Update Pure library ==='
  sh "cp -r #{pure_dir} #{css_dir}"

  puts '=== Remove tmp files ==='
  sh "rm -r #{bower_dir}"

  puts '=== Create namespaces: pure, pure-min ==='
  Dir::mkdir("#{css_dir}pure/")
  Dir::mkdir("#{css_dir}pure-min/")

  Dir::glob("#{css_dir}*.css") {|f|
    filename = f.split('/').pop

    if /(\S.+)-min.css$/ =~ filename
      sh "cp #{f} #{css_dir}pure-min/#{$1}.css"
    else
      sh "cp #{f} #{css_dir}pure/"
    end
  }
  puts '=== complete namespaces: pure, pure-min ==='
end


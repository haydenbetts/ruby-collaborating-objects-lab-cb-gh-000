task :environment do
  require_relative './config/environment'
end

desc "starts console"
task :console => :environment do
  Pry.start
end

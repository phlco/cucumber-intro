namespace :travis do
  desc "run all tasks"
  task :run do
    ["rake db:create", "rake db:migrate RAILS_ENV=test", "rake cucumber"].each do |cmd|
      puts "Starting to run #{cmd}..."
      system("bundle exec #{cmd}")
      raise "#{cmd} failed!" unless $?.exitstatus == 0
    end
  end
end

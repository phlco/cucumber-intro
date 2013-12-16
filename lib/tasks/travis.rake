require 'coveralls/rake/task'
Coveralls::RakeTask.new

desc "Run tests on Travis-CI"
task travis: [:cucumber, 'coveralls:push']

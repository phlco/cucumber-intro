sh -e /etc/init.d/xvfb start
export DISPLAY=:99.0
export JASMINE_SPEC_FORMAT=documentation
bundle exec rake db:create
bundle exec rake db:migrate RAILS_ENV=test

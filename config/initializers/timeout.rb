# Reference: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#timeout

# config/initializers/timeout.rb
Rack::Timeout.timeout = 20  # seconds

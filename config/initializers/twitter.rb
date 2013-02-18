Twitter.configure do |config|
  config.consumer_key    = Settings.twitter.app.key
  config.consumer_secret = Settings.twitter.app.secret
end

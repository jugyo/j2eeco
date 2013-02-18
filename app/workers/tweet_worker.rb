class TweetWorker
  include Sidekiq::Worker

  def perform(q_id)
    q    = Q.find(q_id)
    text = q.text.truncate(140 - 23 - 3 - 2)
    url  = "http://#{Settings.url_options.host}/q/#{q.id}"
    twitter.update "#{text} #{url}" if Rails.env.production?
    logger.info "Tweet: " + "'#{text} #{url}'"
  end

  def twitter
    @twitter ||= Twitter::Client.new(
      oauth_token: Settings.twitter.user.token,
      oauth_token_secret: Settings.twitter.user.secret
    )
  end
end

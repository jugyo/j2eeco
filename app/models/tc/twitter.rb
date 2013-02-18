module TC::Twitter
  def twitter
    @twitter ||= Twitter::Client.new(
      oauth_token: Settings.twitter.user.token,
      oauth_token_secret: Settings.twitter.user.secret
    )
  end
end
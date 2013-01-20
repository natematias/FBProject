class TwitterClient
  def self.get_auth_client
   client = TwitterOAuth::Client.new(
    :consumer_key => CONSUMER_KEY,
    :consumer_secret => CONSUMER_SECRET
   )
  end

  def self.get_api_client(oauth_token, oauth_secret)
    Twitter::Client.new(
      :oauth_token => oauth_token
      :oauth_token_secret => oauth_secret
    )
  end
end

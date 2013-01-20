class TwitterClient
  def self.get_client
   client = TwitterOAuth::Client.new(
    :consumer_key => CONSUMER_KEY,
    :consumer_secret => CONSUMER_SECRET
   )
  end
end

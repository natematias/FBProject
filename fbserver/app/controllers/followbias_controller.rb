class FollowbiasController < ApplicationController
  def index
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
    if(@current_user)
      Twitter.oauth_token = @current_user['credentials']['token']
      Twitter.oauth_token_secret = @current_user['credentials']['secret']
      @timeline = Twitter.home_timeline.first.text
     else
      @timeline = nil
     end
  end
end

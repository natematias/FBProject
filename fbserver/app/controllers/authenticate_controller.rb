class AuthenticateController < ApplicationController
  def index
    client = TwitterClient.get_auth_client
    session[:request_token] = client.request_token(:oauth_callback => "http://hypatia.media.mit.edu:4000/authenticate/success")
    redirect_to session[:request_token].authorize_url
  end
 
  def success
    session[:oauth_token] = params[:oauth_token]
    session[:oauth_verifier] = params[:oauth_verifier]
    client = TwitterClient.get_auth_client

    access_token = client.authorize(
      session[:request_token].token,
      session[:request_token].secret,
      :oauth_verifier => params[:oauth_verifier]
    )
    @authorized = client.authorized?
    user_client = TwitterClient.get_api_client(session[:oauth_token], session[:request_token].secret)
    @friends = Twitter.friends("natematias")
  end

end

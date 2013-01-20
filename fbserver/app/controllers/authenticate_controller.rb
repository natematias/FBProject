class AuthenticateController < ApplicationController
  def index
    client = TwitterClient.get_client
    session[:request_token] = client.request_token(:oauth_callback => "http://hypatia.media.mit.edu:4000/authenticate/success")
    redirect_to session[:request_token].authorize_url
  end
 
  def success
    oauth_token = params[:oauth_token]
    oauth_verifier = params[:oauth_verifier]
    client = TwitterClient.get_client

    access_token = client.authorize(
      session[:request_token].token,
      session[:request_token].secret,
      :oauth_verifier => params[:oauth_verifier]
    )
    @authorized = client.authorized?
  end

end

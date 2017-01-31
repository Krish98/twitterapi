class TweetsController < ApplicationController
   def new
   end

  def create
    username = params[:tweet]
     options = { :include_arts => true}
     @tweets = $client.user_timeline(username,options)
     @tweets.each {|t| Tweet.create(tweet: t.text, uname: params[:tweet])}
     redirect_to tweets_index_path
  end

  def index
  	 @tweets = Tweet.all.to_a
  end
end

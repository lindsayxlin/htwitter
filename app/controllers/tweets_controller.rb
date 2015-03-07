class TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
    #make new instace of tweet object and call it @tweet
  end
end

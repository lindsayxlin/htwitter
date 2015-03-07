class TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
    #make new instace of tweet object and call it @tweet
  end

  def create
    @tweet = Tweet.new(tweet_params)

     if @tweet.save
    flash[:success] = "You have created a tweet"

    #make sure flash appears by going to application.html
       redirect_to new_tweet_path
       #render vs reditrect
    end


    #goes back to new -- go back to original website
    #saves tweet to the database
# ruby automatically adds a return to each fcn
  end

  def index
@tweets = Tweet.all

  end


  def tweet_params
    params.require(:tweet).permit(:content)
    #only thing we are going to permit is the CONTENT
  end

#the two @tweets have no idea about each other!

end

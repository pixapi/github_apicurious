class FollowersController < ApplicationController
  before_action :authorize!
  
  def index
    @followers = GithubFollower.followers(current_user)
  end
end

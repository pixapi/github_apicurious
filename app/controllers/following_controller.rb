class FollowingController < ApplicationController
  before_action :authorize!
  
  def index
    @users_following = GithubFollowing.following(current_user)
  end
end

class FollowingController < ApplicationController
  # before_action :authorize!
  def index
    @users_following = GithubFollowing.followers(current_user)
  end
end

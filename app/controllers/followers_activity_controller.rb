class FollowersActivityController < ApplicationController
  before_action :authorize!
  
  def index
    @followers_activity = GithubFollowerActivity.follower_activity(current_user)
  end
end

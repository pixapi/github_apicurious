class DashboardController < ApplicationController
  before_action :authorize!

  def show
    starred_repos = GithubRepo.repos(current_user)
    @starred_number = starred_repos.count

    user_followers = GithubFollower.followers(current_user)
    @followers_number = user_followers.count

    user_following = GithubFollowing.following(current_user)
    @following_number = user_following.count

    redirect_to dashboard_path
  end
end

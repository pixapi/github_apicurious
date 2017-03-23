class DashboardController < ApplicationController
  before_action :authorize!

  def show
    starred_repos = GithubRepo.repos(current_user)
    # binding.pry
    @starred_number = starred_repos.count
    # @user_followers = GithubFollowers.user_followers(current_user)
    # @user_following = GithubFollowing.following_user(current_user)
    redirect_to dashboard_path
  end
end

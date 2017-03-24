class DashboardController < ApplicationController
  before_action :authorize!

  def show
    starred_repos = GithubRepo.repos(current_user)
    @starred_number = starred_repos.count

    user_followers = GithubFollower.followers(current_user)
    @followers_number = user_followers.count

    user_following = GithubFollowing.following(current_user)
    @following_number = user_following.count

    user_recent_commits = GithubCommit.recent_commits(current_user)
    @recent_commits_number = user_recent_commits.count

    follower_activity = GithubFollowerActivity.follower_activity(current_user)
    @follower_activity_number = follower_activity.count

    user_organizations = GithubOrganization.user_organizations(current_user)
    @user_organizations_number = user_organizations.count

    user_repos = GithubUserRepo.user_repos(current_user)
    @user_repos_number = user_repos.count
  end
end

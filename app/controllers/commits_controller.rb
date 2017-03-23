class CommitsController < ApplicationController
  # before_action :authorize!
  def index
    @recent_commits = GithubCommit.recent_commits(current_user)
  end
end

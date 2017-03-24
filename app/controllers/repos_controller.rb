class ReposController < ApplicationController
  before_action :authorize!

  def index
    @user_repos = GithubUserRepo.user_repos(current_user)
  end
end

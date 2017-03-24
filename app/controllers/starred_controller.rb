class StarredController < ApplicationController
  before_action :authorize!

  def index
    @starred = GithubRepo.repos(current_user)
  end
end

class StarredController < ApplicationController
  # before_action :authorize!

  def index
    # binding.pry
    @starred = GithubRepo.repos(current_user)
  end
end

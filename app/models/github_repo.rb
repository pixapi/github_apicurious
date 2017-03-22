class GithubRepo
  def initialize(repo_data)
    @name = repo_data[:name]
    @type = repo_data[:type]
    @starred_repo = repo_data[:starred_url]
  end

  def self.repos(current_user)
    repos_by_user = GithubService.repos_by_user(current_user)

    repos = repos_by_user.map do|repo_data|
      byebug
      GithubRepo.new(repo_data)
    end
    # byebug
  end
end

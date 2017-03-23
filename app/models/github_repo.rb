class GithubRepo
  def initialize(repo_data)
    # binding.pry
    @name = repo_data[:name]
    @link = repo_data[:html_url]
    @created = repo_data[:created_at]
    @updated = repo_data[:updated_at]
    @language = repo_data[:language]
  end

  def self.repos(current_user)
    starred_repos = GithubService.starred_by_user(current_user)
    # binding.pry
    repos = starred_repos.map do|repo_data|
      GithubRepo.new(repo_data)
    end
  end
end

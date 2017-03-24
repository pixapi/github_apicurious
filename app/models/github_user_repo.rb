class GithubUserRepo
  attr_reader :name, :link, :created, :updated, :language

  def initialize(user_repo_data)
    @name = user_repo_data[:name]
    @link = user_repo_data[:html_url]
    @created = user_repo_data[:created_at]
    @updated = user_repo_data[:updated_at]
    @language = user_repo_data[:language]
  end

  def self.user_repos(current_user)
    user_repos = GithubService.user_repos(current_user)
    repos = user_repos.map do|user_repo_data|
      GithubUserRepo.new(user_repo_data)
    end
  end
end

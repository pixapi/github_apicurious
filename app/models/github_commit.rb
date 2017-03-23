class GithubCommit
  attr_reader :id, :type, :author, :repo_link

  def initialize(commit_data)
    @id = commit_data[:id]
    @type = commit_data[:type]
    @author = commit_data[:actor][:login]
    @repo_link = commit_data[:repo][:name]
  end

  def self.recent_commits(current_user)
    user_commits = GithubService.recent_commits(current_user)
    commits = user_commits.map do|commit_data|
      GithubCommit.new(commit_data)
    end
  end
end

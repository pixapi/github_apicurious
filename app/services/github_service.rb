class GithubService
  def initialize(current_user)
    @current_user = current_user
  end

  def self.repos_by_user(current_user)
    @username = current_user.username
    response = Faraday.get("https://api.github.com/users/pixapi/repos?client_id=#{ENV['client_id']}&client_secret=#{ENV['client_secret']}")
    repos = JSON.parse(response.body, symbolize_names: true)
    # byebug
    # binding.pry
  end

  def self.followers(current_user)
  end

  def self.following(current_user)
  end
end

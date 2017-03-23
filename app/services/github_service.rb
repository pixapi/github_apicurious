class GithubService
  def initialize(current_user)
    @current_user = current_user
  end

  def self.starred_by_user(current_user)
    @username = current_user.username
    response = Faraday.get("https://api.github.com/users/pixapi/starred")
    repos = JSON.parse(response.body, symbolize_names: true)
  end

  def self.followers(current_user)
  end

  def self.following(current_user)
  end
end

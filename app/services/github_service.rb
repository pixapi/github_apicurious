class GithubService
  # def initialize(current_user)
  #   @current_user = current_user
  # end

  def self.starred_by_user(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    
    response = Faraday.get("https://api.github.com/users/#{@username}/starred?client_id=#{@client_id}&client_secret=#{@client_secret}")
    repos = JSON.parse(response.body, symbolize_names: true)
  end

  def self.followers(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/followers?client_id=#{@client_id}&client_secret=#{@client_secret}")
    repos = JSON.parse(response.body, symbolize_names: true)
  end

  def self.following(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/following?client_id=#{@client_id}&client_secret=#{@client_secret}")
    repos = JSON.parse(response.body, symbolize_names: true)
  end
end

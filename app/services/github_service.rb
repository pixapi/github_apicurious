class GithubService
  def self.starred_by_user(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']

    response = Faraday.get("https://api.github.com/users/#{@username}/starred?client_id=#{@client_id}&client_secret=#{@client_secret}")
    starred = JSON.parse(response.body, symbolize_names: true)
  end

  def self.followers(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/followers?client_id=#{@client_id}&client_secret=#{@client_secret}")
    followers = JSON.parse(response.body, symbolize_names: true)
  end

  def self.following(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/following?client_id=#{@client_id}&client_secret=#{@client_secret}")
    following = JSON.parse(response.body, symbolize_names: true)
  end

  def self.recent_commits(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/events?client_id=#{@client_id}&client_secret=#{@client_secret}")
    commits = JSON.parse(response.body, symbolize_names: true)
  end

  def self.follower_activity(current_user)
    @username = current_user.username
    @client_id = ENV['client_id']
    @client_secret = ENV['client_secret']
    response = Faraday.get("https://api.github.com/users/#{@username}/received_events?client_id=#{@client_id}&client_secret=#{@client_secret}")
    activity = JSON.parse(response.body, symbolize_names: true)
  end

end

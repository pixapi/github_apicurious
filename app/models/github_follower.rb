class GithubFollower
  def initialize(follower_data)
    @name   = follower_data[:login]
    @image  = follower_data[:avatar_url]
    @link   = follower_data[:html_url]
  end

  def self.followers(current_user)
    user_followers = GithubService.followers(current_user)
    followers = user_followers.map do |follower_data|
      GithubFollower.new(follower_data)
    end
  end
end

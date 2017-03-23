class GithubFollowing
  def initialize(following_data)
    @name   = following_data[:login]
    @image  = following_data[:avatar_url]
    @link   = following_data[:html_url]
  end

  def self.following(current_user)
    user_following = GithubService.following(current_user)
    following = user_following.map do |following_data|
      GithubFollowing.new(following_data)
    end
  end
end

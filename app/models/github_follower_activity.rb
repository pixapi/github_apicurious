class GithubFollowerActivity
  attr_reader :id, :type, :author, :repo_link

  def initialize(follower_activity_data)
    @id        = follower_activity_data[:id]
    @type      = follower_activity_data[:type]
    @author    = follower_activity_data[:actor][:login]
    @repo_link = follower_activity_data[:repo][:name]
  end

  def self.follower_activity(current_user)
    follower_activity = GithubService.follower_activity(current_user)
    activities = follower_activity.map do |follower_activity_data|
      GithubFollowerActivity.new(follower_activity_data)
    end
  end
end

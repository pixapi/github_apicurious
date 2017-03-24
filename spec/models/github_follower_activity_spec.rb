require 'rails_helper'

describe GithubFollowerActivity do
  it 'displays follower activity' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    follower_activity = GithubFollowerActivity.follower_activity(current_user)

    expect(follower_activity.count).to eq(30)
    expect(follower_activity.first.id).to be_truthy
    expect(follower_activity.first.author).to be_truthy
    expect(follower_activity.first).to be_a(GithubFollowerActivity)
  end
end

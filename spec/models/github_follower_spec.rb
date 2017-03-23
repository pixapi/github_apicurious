require 'rails_helper'

describe GithubFollower do
  it 'displays number of user followers' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    followers = GithubFollower.followers(current_user)

    expect(followers.count).to eq(2)
    expect(followers.first.name).to be_truthy
    expect(followers.first.image).to be_truthy
    expect(followers.first).to be_a(GithubFollower)
  end
end

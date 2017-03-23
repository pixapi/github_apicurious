require 'rails_helper'

describe GithubFollowing do
  it 'displays number of user following' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    following = GithubFollowing.following(current_user)

    expect(following.count).to eq(2)
    expect(following.first.name).to be_truthy
    expect(following.first.image).to be_truthy
    expect(following.first).to be_a(GithubFollowing)
  end
end

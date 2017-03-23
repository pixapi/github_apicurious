require 'rails_helper'

describe GithubService do
  it 'displays number of user repos' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    repos = GithubRepo.repos(current_user)

    expect(repos.count).to eq(6)
  end

  it 'displays number of user followers' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    followers = GithubFollower.followers(current_user)

    expect(followers.count).to eq(2)
    expect(followers.first.name).to be_truthy
    expect(followers.first).to respond_to(name)
    expect(follower).to be_a(GithubFollower)
  end

  it 'displays number of user following' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    following = GithubFollowing.following(current_user)

    expect(following.count).to eq(2)
  end

  it 'displays number of user recent commits' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    recent_commits = GithubCommit.recent_commits(current_user)

    expect(recent_commits.count).to eq(30)
  end

end

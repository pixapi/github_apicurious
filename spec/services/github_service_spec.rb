require 'rails_helper'

describe GithubService do
  it 'displays starred repos' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    starred_repos = GithubService.starred_by_user(current_user)
    expect(starred_repos.class).to eq(Array)
    expect(starred_repos.first.class).to eq(Hash)
    expect(starred_repos.first[:name]).to be_truthy
  end

  it 'displays followers' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    followers = GithubService.followers(current_user)

    expect(followers.class).to eq(Array)
    expect(followers.first.class).to eq(Hash)
    expect(followers.first[:login]).to be_truthy
    expect(followers.first[:avatar_url]).to be_truthy
  end

  it 'displays users following' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    following = GithubService.following(current_user)

    expect(following.class).to eq(Array)
    expect(following.first.class).to eq(Hash)
    expect(following.first[:login]).to be_truthy
    expect(following.first[:avatar_url]).to be_truthy
  end

  it 'displays user recent commits' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    recent_commits = GithubService.recent_commits(current_user)

    expect(recent_commits.class).to eq(Array)
    expect(recent_commits.first.class).to eq(Hash)
    expect(recent_commits.first[:type]).to be_truthy
    expect(recent_commits.first[:repo][:name]).to be_truthy
  end

  it 'displays followers activity' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    followers_activity = GithubService.follower_activity(current_user)

    expect(followers_activity.class).to eq(Array)
    expect(followers_activity.first.class).to eq(Hash)
    expect(followers_activity.first[:type]).to be_truthy
    expect(followers_activity.first[:repo][:name]).to be_truthy
  end

  it 'displays user organizations' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    organizations = GithubService.user_organizations(current_user)

    expect(organizations.class).to eq(Array)
    expect(organizations.first.class).to eq(Hash)
    expect(organizations.first[:login]).to be_truthy
    expect(organizations.first[:avatar_url]).to be_truthy
  end

  it 'displays user repositories' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    user_repos = GithubService.user_repos(current_user)

    expect(user_repos.class).to eq(Array)
    expect(user_repos.first.class).to eq(Hash)
    expect(user_repos.first[:name]).to be_truthy
    expect(user_repos.first[:html_url]).to be_truthy
  end
end

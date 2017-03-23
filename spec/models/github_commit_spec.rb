require 'rails_helper'

describe GithubCommit do
  it 'displays number of user recent commits' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    recent_commits = GithubCommit.recent_commits(current_user)

    expect(recent_commits.count).to eq(30)
    expect(recent_commits.first.id).to be_truthy
    expect(recent_commits.first.author).to be_truthy
    expect(recent_commits.first).to be_a(GithubCommit)
  end
end

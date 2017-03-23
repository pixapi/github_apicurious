require 'rails_helper'

describe GithubService do
  it 'displays user repos' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    repos = GithubRepo.repos(current_user)

    # expect(repos.first.class).to eq(GithubRepo)
    expect(repos.count).to eq(6)
  end
end
  # it 'displays user followers' do
  # end
  #
  # it 'displays user following' do
  # end

require 'rails_helper'

describe GithubService do
  it 'displays user repos' do
    # access_token = ENV['access_token']
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    repos = GithubRepo.repos(current_user)
    # byebug

    #see what repos is and how to access 47, maybe count?
    expect(repos).to eq(6)
  end
end
  # it 'displays user followers' do
  # end
  #
  # it 'displays user following' do
  # end

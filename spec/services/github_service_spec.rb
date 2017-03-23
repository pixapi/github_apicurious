require 'rails_helper'

describe GithubService do
  it 'displays starred repos' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    github_service = GithubService.starred_by_user(current_user)
    expect(github_service.class).to eq(Array)
    expect(github_service.first.class).to eq(Hash)
    expect(github_service.first[:name]).to be_truthy
  end
end

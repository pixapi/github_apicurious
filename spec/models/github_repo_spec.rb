require 'rails_helper'

describe GithubRepo do
  it 'displays number of user repos' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    repos = GithubRepo.repos(current_user)

    expect(repos.count).to eq(6)
    expect(repos.first.name).to be_truthy
    expect(repos.first.link).to be_truthy
    expect(repos.first).to be_a(GithubRepo)
  end
end

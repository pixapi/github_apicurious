require 'rails_helper'

describe GithubUserRepo do
  it 'displays user repositories' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    user_repos = GithubUserRepo.user_repos(current_user)

    expect(user_repos.count).to eq(30)
    expect(user_repos.first.name).to be_truthy
    expect(user_repos.first.link).to be_truthy
    expect(user_repos.first).to be_a(GithubUserRepo)
  end
end

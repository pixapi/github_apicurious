require 'rails_helper'

describe GithubOrganization do
  it 'displays user organizations afiliation' do
    current_user = User.create(username: 'pixapi')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)

    user_organizations = GithubOrganization.user_organizations(current_user)

    expect(user_organizations.count).to eq(2)
    expect(user_organizations.first.name).to be_truthy
    expect(user_organizations.first.image).to be_truthy
    expect(user_organizations.first).to be_a(GithubOrganization)
  end
end

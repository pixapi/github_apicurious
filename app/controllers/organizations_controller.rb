class OrganizationsController < ApplicationController
  before_action :authorize!

  def index
    @user_organizations = GithubOrganization.user_organizations(current_user)
  end
end

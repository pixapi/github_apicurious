class GithubOrganization
  attr_reader :name, :image, :link

  def initialize(organization_data)
    @name   = organization_data[:login]
    @image  = organization_data[:avatar_url]
    @link   = organization_data[:html_url]
  end

  def self.user_organizations(current_user)
    user_organizations = GithubService.user_organizations(current_user)
    organizations = user_organizations.map do |organization_data|
      GithubOrganization.new(organization_data)
    end
  end
end

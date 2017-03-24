# require 'rails_helper'
#
# describe User do
#   it "displays user info" do
#     current_user = User.create(username: 'pixapi')
#     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)
#     data = {login: "pixapi", token: "123456", email: "pixapi@pixapi.com", avatar_url: "https://avatars2.githubusercontent.com/u/20365127"}
#     access_token = "123456"
#
#     github_user = User.from_github(data, access_token)
#
#     expect(github_user.username).to be_eq("pixapi")
#     expect(github_user.token).to be_eq("123456")
#     expect(github_user.email).to be_eq("pixapi@pixapi.com")
#     expect(github_user.image).to be_eq("https://avatars2.githubusercontent.com/u/20365127")
#   end
# end

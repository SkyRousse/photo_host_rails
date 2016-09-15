require 'rails_helper'

describe 'GET new' do
  it "signs in a user" do
    user = FactoryGirl.create(:user)
    # Mimic the router behavior of setting the Devise scope through the env.
    @request.env['devise.mapping'] = Devise.mappings[:user]

    # Use the sign_in helper to sign in a fixture `User` record.
    binding.pry
    sign_in users(user)

    get :new

    # assert something
  end
end

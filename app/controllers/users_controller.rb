class UsersController < ApplicationController
  def index

  end


  def create
    binding.pry
    User.find(current_user).send_confirmation_instructions
  end

end

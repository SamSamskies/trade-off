class PreLaunchSignUpEmailController < ApplicationController

  def create
    email = PreLaunchSignUpEmail.create(email: params[:email])
    @success = true if email.valid?
  end

end
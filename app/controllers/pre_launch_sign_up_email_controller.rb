class PreLaunchSignUpEmailController < ApplicationController

  def create
    PreLaunchSignUpEmail.create(email: params[:email])
  end

end
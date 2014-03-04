class ConversationsController < ApplicationController

  def create
    # send email
  end

  private

  def conversation_params
    params.require(:conversation).permit(:email)
  end

end
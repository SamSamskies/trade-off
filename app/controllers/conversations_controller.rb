class ConversationsController < ApplicationController

  def create
    # send email
    options = {
      to_user: User.find_by(email: conversation_params[:email]),
      from_user: current_user,
      body: conversation_params[:body]
    }

    @success = Notifier.send_notification_email(options).deliver

    puts "*" * 99
    puts @success
  end

  private

  def conversation_params
    params.require(:conversation).permit(:email, :body)
  end

end
class Notifier < ActionMailer::Base
  default :from => 'tradeoffgroup@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_notification_email(options)
    @to_user = options[:to_user]
    @from_user = options[:from_user]
    @body = options[:body]

    mail( :to => @to_user.email,
          :subject => "Let's trade!" )
  end
end
class Notifier < ActionMailer::Base
  default :from => 'tradeoffgroup@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_notification_email(options)
    to = options[:to]
    from = options[:from]
    @body = options[:body]

    mail( :to => to,
          :from => from,
          :subject => "Let's trade!" )
  end
end
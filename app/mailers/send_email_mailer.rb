class SendEmailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_email_mailer.welcome.subject
  #
  def welcome(current_user)
    @current_user = current_user
    mail(to: current_user.email,
         subject: "Welcome to Kalebr.com!"
        )
  end
end

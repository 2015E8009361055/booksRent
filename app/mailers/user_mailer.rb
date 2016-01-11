class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
<<<<<<< HEAD
     @user = user
      mail to: user.email, subject: "Account activation"
=======
    @user = user
    mail to: user.email, subject: "Account activation"

    #@greeting = "Hi"

    #mail to: "to@example.org"
>>>>>>> 614c85f47342c9341cac90c3512504c100360672
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
<<<<<<< HEAD
   @user = user

 mail to: user.email, subject: "Password reset"
=======
    @greeting = "Hi"

    mail to: "to@example.org"
>>>>>>> 614c85f47342c9341cac90c3512504c100360672
  end
end

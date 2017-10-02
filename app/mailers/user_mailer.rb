class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: 'ministeriogracanobrasil@gmail.com', subject: 'Ativação de conta'
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: 'Reset de senha'
  end
end
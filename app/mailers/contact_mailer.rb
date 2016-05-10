class ContactMailer < ApplicationMailer
  def contact_email(sender)
    @sender = sender
    @user = User.first
    mail to: @user.email, subject: "New message from #{@sender[:name]}"
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  def email
    @user = User.first
    @sender = sender_params
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: "New message from #{@sender[:name]}")
  end

end

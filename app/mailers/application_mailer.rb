class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  def contact_email
    @user = User.first
    @sender = sender_params
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: "New message from #{@sender}")
  end

  private
    def sender_params
      params.require(:sender).permit(:name, :email, :content)
    end
end

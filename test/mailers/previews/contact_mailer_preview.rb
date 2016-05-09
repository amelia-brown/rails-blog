# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def message_email
    joe = {:name => "Joe", :email => "joe@joe.ca", :message => "hi"}
    ContactMailer.contact_email(joe)
  end
end

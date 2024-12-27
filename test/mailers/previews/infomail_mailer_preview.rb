# Preview all emails at http://localhost:3000/rails/mailers/infomail_mailer
class InfomailMailerPreview < ActionMailer::Preview
  def infomail
    infomail = Infomail.new(name: "mario")
    InfomailMailer.send_mail(infomail)
  end
end

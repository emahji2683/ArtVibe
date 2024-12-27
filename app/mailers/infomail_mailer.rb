class InfomailMailer < ApplicationMailer
  def send_mail(infomail, user)
    @infomail = infomail
    mail(
      from: ENV['GOOGLE_MAIL_ADDRESS'],
      to:   user.email,
      subject: 'お問い合わせ通知'
    )
  end
end

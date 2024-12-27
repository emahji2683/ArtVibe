class InfomailMailer < ApplicationMailer
  def send_mail(infomail)
    @infomail = infomail
    mail(
      from: ENV['GOOGLE_MAIL_ADDRESS'],
      to:   ENV['GOOGLE_MAIL_ADDRESS'],
      subject: 'お問い合わせ通知'
    )
  end
end

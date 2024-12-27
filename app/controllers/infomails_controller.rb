class InfomailsController < ApplicationController
  def new
    @infomail = Infomail.new
  end

  def create
    @infomail = Infomail.new(infomail_params)
    if @infomail.save
      InfomailMailer.send_mail(@infomail, current_user).deliver
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :new
    end
  end


  private

  # Only allow a list of trusted parameters through.
  def infomail_params
    params.require(:infomail).permit(:name, :content)
  end
end

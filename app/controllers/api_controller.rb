class ApiController < ActionController::API
  EMAILS_DE_ESCUELAS = {
      1 => ENV["EMAIL_ESCUELA"]
  }

  def report_bullying
    # ApplicationMailer.send_report_bullying_email(
    #     EMAILS_DE_ESCUELAS[1],
    #     params[:porcentaje_de_sentimiento],
    # ).deliver_now

    render status: :ok
  end
end

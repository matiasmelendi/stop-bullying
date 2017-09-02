class ApiController < ActionController::API
  def report_bullying
    ApplicationMailer.send_report_bullying_email(receivers, report_content).deliver_now

    render status: :ok
  end

  private

  def receivers
    ENV["EMAIL_ESCUELA"].split(',')
  end

  def report_content
    params.permit(:curso, :quien, :sentimiento, :tipo_bullying, :descripcion)
  end
end

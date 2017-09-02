class ApiController < ActionController::API
  before_filter :set_cors_headers

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

  def set_cors_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end

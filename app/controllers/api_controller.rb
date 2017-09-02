class ApiController < ActionController::API
  def report_bullying
    ApplicationMailer.send_report_bullying_email(ENV["EMAIL_ESCUELA"].split(','), params).deliver_now

    render status: :ok
  end
end

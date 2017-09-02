class ApplicationMailer < ActionMailer::Base
  default from: 'denuncias.stopbullyng@gmail.com'
  layout 'mailer'

  def send_report_bullying_email(emails_escuela, informacion)
    @emails_escuela = emails_escuela
    @informacion = informacion

    mail(to: @emails_escuela, subject: 'Bullying report')
  end
end

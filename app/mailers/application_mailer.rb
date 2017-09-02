class ApplicationMailer < ActionMailer::Base
  default from: 'fzuppa@esteticia.com'
  layout 'mailer'

  def send_report_bullying_email(email_escuela, porcentaje_de_sentimiento)
    @email_escuela = email_escuela
    @porcentaje_de_sentimiento = porcentaje_de_sentimiento

    mail(to: @email_escuela, subject: 'Bullying report')
  end
end

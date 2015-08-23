class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.project_request.subject
  #
  def project_request(message)
    @body = :message => message
    @contact_email = message.email
    @contact_name = message.name
    @greeting = "Hi"
    @listen_online = message.listen_online
    @send_suggestions = message.send_suggestions
    @sent_on = Time.now

    mail (to: "licensing@somersetsongs.com", subject: 'Music Request for: ' + message.project)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_request.subject
  #
  def contact_request
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

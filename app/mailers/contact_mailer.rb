class ContactMailer < ApplicationMailer


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.project_request.subject
  #
  def project_request(message)
    # Create an instance of Postmark::ApiClient
    client = Postmark::ApiClient.new(ENV['POSTMARK_API_KEY'])

    @body = message
    @sent_on = Time.now

    # mail (to: "licensing@somersetsongs.com", subject: 'Music Request for: ' + message.project)
    #mail to: "licensing@somersetsongs.com", from: message.email_address, subject: 'Music Request for: ' + message.project

    # Test Postmark
    client.deliver(
      from: 'licensing@somersetsongs.com',
      to: 'gclark2@gmail.com',
      subject: 'Hello from Postmark',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: true
    )
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

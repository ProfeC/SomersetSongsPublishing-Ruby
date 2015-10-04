class ContactMailer < ApplicationMailer


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.project_request.subject
  #
  def project_request(message)
    # Create an instance of Postmark::ApiClient

    @body = message
    @sent_on = Time.now

    # mail (to: "licensing@somersetsongs.com", subject: 'Music Request for: ' + message.project)
    mail to: "licensing@somersetsongs.com", from: message.email_address, subject: 'Music Request for: ' + message.project

    # Test Postmark
    # client = Postmark::ApiClient.new(ENV['POSTMARK_API_KEY'])
    # client.deliver(
    #   from: 'webmaster@profec.net',
    #   to: 'licensing@somersetsongs.com',
    #   subject: 'Music Request for: ' + message.project,
    #   html_body: (render 'contact_mailer/project_request'),
    #   track_opens: true
    # )

    # Notify the team about a new request
    # client.deliver_with_template({
    #   :from=>"webmaster@profec.net",
    #   :to=>"gclark2@gmail.com",
    #   :template_id=>68359,
    #   :template_model=> {
    #     "project"=>message.project,
    #     "name"=>message.name,
    #     "email_address"=>message.email_address,
    #     "description"=>message.description,
    #     "listen_online"=>message.listen_online,
    #     "send_suggestions"=>message.send_suggestions,
    #     "sent_on"=> @sent_on
    #     }
    #   }
    # )

    #Send confirmation email
    # client.deliver_with_template({
    #   :from=>"webmaster@profec.net",
    #   :to=>message.email_address,
    #   :template_id=>68369,
    #   :template_model=> {
    #     "project"=>message.project,
    #     "name"=>message.name,
    #     "email_address"=>message.email_address,
    #     "description"=>message.description,
    #     "listen_online"=>message.listen_online,
    #     "send_suggestions"=>message.send_suggestions,
    #     "sent_on"=> @sent_on
    #     }
    #   }
    # )
  end

  def project_request_confirmation(message)
    # Create an instance of Postmark::ApiClient

    @body = message
    @sent_on = Time.now

    mail to: message.email_address, from: 'licensing@somersetsongs.com', subject: 'Music Request for: ' + message.project + ' Confirmation'
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

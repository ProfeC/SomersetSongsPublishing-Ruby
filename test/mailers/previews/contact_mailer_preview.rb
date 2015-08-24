# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/project_request
  def project_request
    ContactMailer.project_request
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/contact_request
  def contact_request
    ContactMailer.contact_request
  end

end

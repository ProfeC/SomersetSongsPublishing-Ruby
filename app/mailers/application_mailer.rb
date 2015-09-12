class ApplicationMailer < ActionMailer::Base
  default from: ENV['mail_user']
  layout 'mailer'
end

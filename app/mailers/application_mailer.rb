class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@movie.com'
  layout 'mailer'
end

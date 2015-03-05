class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  # default to: "mackey91@gmail.com"
  layout 'mailer'
end

class AppMailer < ActionMailer::Base
  def notify_on_new_todo(user, todo)
    @todo = todo
    mail from: 'eprleads@gmail.com', to: user.email, subject: 'Created new todo'
  end
end
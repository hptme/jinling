class CustomerMailer < ActionMailer::Base
  default from: "hpttme@gmail.com"


  def welcome_email(name, email, message)
    @name = name
    @email  = email
    @message = message
    mail(to: "hpttme@gmail.com", subject: "京麟 - Hello, #{@name}")
  end

end

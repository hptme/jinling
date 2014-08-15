class CustomerMailer < ActionMailer::Base
  default from: "jinlinchiayi@gmail.com"


  def welcome_email(name, email, message)
    binding.pry
    @name = name
    @email  = email
    @message = message
    mail(to: "jinlinchiayi@gmail.com", subject: "京麟 - Hello, #{@name}")
  end

end

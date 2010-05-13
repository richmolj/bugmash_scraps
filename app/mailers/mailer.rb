class Mailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def confirmation
    @foo = "OMG"
    mail(:to => 'jhall@customink.com',
      :subject => "New account information")
  end
end

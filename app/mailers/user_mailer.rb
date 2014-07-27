class UserMailer < ActionMailer::Base
  default from: "Surryalife Consultants <admin@surryalife.com>"

  def contact_mail(params)
    @params = params
    mail(to: "don.paddy@gmail.com", subject: "Contact request from #{@params[:name]}")
  end

  def register_mail(params)
    @params = params
    mail(to: "don.paddy@gmail.com", subject: "New User Registration: #{@params[:name]}")
  end
end

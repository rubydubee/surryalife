class UserMailer < ActionMailer::Base
  default from: "Surryalife Consultants <admin@surryalife.com>"

  def contact_mail(params)
    @params = params
    mail(to: "admin@surryalife.com", subject: "Contact request from #{@params[:name]}")
  end

  def register_mail(params)
    @params = params
    mail(to: "admin@surryalife.com", subject: "New User Registration: #{@params[:name]}")
  end
end

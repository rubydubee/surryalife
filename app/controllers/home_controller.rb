class HomeController < ApplicationController
  def index
  end

  def services
  end

  def register
  end

  def contact
    @service = params[:service]
  end

  def thanks
    begin
      UserMailer.contact_mail(params).deliver
      @success = true
      @method = "contact"
    rescue Exception => e
      @success = false
    end
  end
end

class HomeController < ApplicationController
  def index
    @current = :a_home
  end

  def services
    @current = :b_services
  end

  def register
    @current = :c_register
  end

  def contact
    @current = :d_contact
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

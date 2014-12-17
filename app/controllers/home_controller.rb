class HomeController < ApplicationController
  RESULT_MAP = {
    home: ["Home", "/"],
    advertising: ["Advertising and Marketing solutions", "/advertising"],
    brand: ["Brand name and Slogans", "/brand_slogans"],
    ad_agency: ["Ad agency and sell your product quickly", "/contact?service=Ad+agency+and+sell+your+product+quickly"]
  }
  INDEX_MAP = Hash.new { |hash, key| hash[key] = Set.new }
  
  "surrya life surryalife consultant".downcase.split.each { |str| INDEX_MAP[str] << RESULT_MAP[:home] }
  "Latest Advertising and Marketing concepts and solutions".downcase.split.map { |str| INDEX_MAP[str] << RESULT_MAP[:advertising] }
  "Help to create new brand name and Slogans for your product".downcase.split.map { |str| INDEX_MAP[str] << RESULT_MAP[:brand] }
  "Ad agency and sell your product quickly".downcase.split.map { |str| INDEX_MAP[str] << RESULT_MAP[:ad_agency] }

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

  def signup
    begin
      puts "signup : started"
      if params[:accept_term].nil?
        puts "signup : accept_term"
        flash[:error] = "Please Accept our Terms and Conditions."
        redirect_to "/register"
        return
      end
      if params[:name].blank? or params[:phone_number].blank? or params[:email].blank?
        puts "signup : blank_stuff"
        flash[:error] = "Please enter all the fields marked with *."
        redirect_to "/register"
        return
      end
      puts "signup : nothing_blank"
      if verify_recaptcha
        puts "signup : verify_recaptcha"
        UserMailer.register_mail(params).deliver
        puts "signup : sent_email"
        @success = true
        @method = "register"
        render :thanks
        return
      else
        puts "signup : not_verified"
        flash[:error] = "Please enter the correct verification code."
        redirect_to "/register"
        return
      end
    rescue Exception => e
      puts e.message
      puts e.backtrace
      redirect_to "/register"
    end
  end

  def results
    keywords = params[:q].downcase.split
    @resultset = keywords.map { |str| INDEX_MAP[str].to_a }.first
    puts "------------ #{@resultset}"
  end

  def method_missing(method, params)
    # handle itself!
  end

end

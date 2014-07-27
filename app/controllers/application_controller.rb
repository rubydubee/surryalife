class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :tabs

  protected

    def tabs(current)
      default_tabs = {
        a_home: ["Home", "/", false],
        b_services: ["Services", "/services", false],
        c_register: ["Register", "/register", false],
        d_contact: ["Contact Us", "/contact", false]
      }
      begin
        default_tabs[current.to_sym][2] = true 
      rescue Exception => e
        # nothing
      end
      default_tabs
    end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
    def configure_permmitted_parameters
      devise_parameter_satinizer.for(:sign_up) << :name
      devise_parameter_satinizer.for(:sign_up) << :age
      
      devise_parameter_satinizer.for(:account_update) << :name
      devise_parameter_satinizer.for(:account_update) << :age
    end


    
end

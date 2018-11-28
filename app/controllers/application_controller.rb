class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    helper Cartify::Engine.helpers
    include Cartify::CurrentSession

    protected
    
    def configure_permitted_parameters
        attributes = [:name, :phone, :address]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

end

# frozen_string_literal: true

class ApplicationController < ActionController::Base # rubocop:todo Style/Documentation
  before_action :conifgure_parameters, if: :devise_controller?

  def conifgure_parameters
    attributes = %i[name email password]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  end
end

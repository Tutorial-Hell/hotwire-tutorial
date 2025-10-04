class ApplicationController < ActionController::Base
  # before_action -> { sleep 3 }
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authenticate_user!, unless: :devise_controller?
  allow_browser versions: :modern
end

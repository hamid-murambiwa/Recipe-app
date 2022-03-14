class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  def index; end

  def show; end
end

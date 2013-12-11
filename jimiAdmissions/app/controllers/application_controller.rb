class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_user!, only: [:index, :show, :edit, :create, :update, :destroy]

  protect_from_forgery with: :exception
end

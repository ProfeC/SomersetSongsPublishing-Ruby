class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout 'hosting'

  def index
    render 'index'
  end

  def about
    render 'about'
  end

  def solicit
    render 'solicit'
  end

  def services
    render 'services'
  end
end

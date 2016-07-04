class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include ApplicationHelper

  protected

  if Rails.env.production?
    unless Rails.application.config.consider_all_requests_local
      rescue_from Exception, with: :render_500
      rescue_from ActionController::RoutingError, with: :render_404
      rescue_from ActionController::UnknownController, with: :render_404
      rescue_from ActiveRecord::RecordNotFound, with: :render_404
    end
  end


  def render_404
    render json: {meta: meta_response(404, "Record not found")}
  end

  def render_500 ( exception )
    render json: {meta: meta_response(400, "Something went wrong")}
  end

end
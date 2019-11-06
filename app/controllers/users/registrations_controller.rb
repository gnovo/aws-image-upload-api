# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  # GET /resource/sign_up
  def new
    render(status: :bad_request) && return if User.exists?(email: sign_up_params['email'])
    build_resource(sign_up_params)
    resource.save
    render_resource(resource)
  end

  # POST /resource
  def create
    return unless params[:email] && params[:password]

    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end

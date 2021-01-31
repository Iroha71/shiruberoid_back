class Auth::RegistrationsController < ApplicationController
  def sign_up_params
    params.permit(:name, :nickname, :email)
  end

  def account_update_params
    params.permit(:name, :nickname, :email)
  end
end
class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def sign_up_params
    params.permit(:name, :nickname, :email, :password)
  end

  def account_update_params
    params.permit(:name, :nickname, :email, :password)
  end
end
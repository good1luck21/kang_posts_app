module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if logged_in?
      User.find_by(id: session[:user_id])
    end
  end

  def authenticate!
    unless logged_in?
      redirect_to new_session_path
    end
  end

  def logged_in?
    !session[:user_id].nil?
  end
end

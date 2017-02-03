helpers do

  def current_user
    User.create(id: session[:user_id])
  end

end
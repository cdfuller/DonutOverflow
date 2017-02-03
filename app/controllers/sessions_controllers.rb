# login page
get '/sessions/new' do
  erb :"_loginform"
end

post '/sessions' do
  user = User.find_by(email: params[:email])
    # Authenticate user by checking password
    if user && user.authenticate?(params[:password])
      # if authenticated assign a session to the user
      session[:user_id] = user.id
      redirect "/"
    else
      # show errors loggin in
      @errors = ["Invalid username or password"]
      erb :"_loginform"
    end

end

# log user out by ending session! turn session to nil
delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end

# backup method to log-out. useful for testing. 
get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
#form for creating new user
get '/users/new' do
  erb :_registrationform
end

#post for submit on registration form
post '/users' do
  user = User.new(params[:user])

  if user.save
    set_user(user)
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :_registrationform
  end

end

get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

post '/questions' do
  @question = Question.new(params[:question])
  # Hardcode the logged-in user 
  # Remove when login implemented
  session[:user_id] = User.first.id 
  @question.author = current_user
  # Remove following line when login implemented
  session.clear
  if @question.save
    redirect "questions/#{@question.id}"
  else
    @errors = @question.errors.full_messages
    erb :'questions/new'
  end
end

get '/questions/new' do
  erb :'questions/new'
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers

  erb :'questions/show'
end

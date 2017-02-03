get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

post '/questions' do
  @question = Question.new(params[:question])
  # ##########################################
  # fix authentication in line below
  session[:user_id]=1
  ###########################################
  @question.user_id = 1
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
  p params
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

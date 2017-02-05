get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

post '/questions' do
  @question = Question.new(params[:question])
  @question.author = current_user
  if @question.save
    redirect "questions/#{@question.id}"
  else
    erb :'questions/new'
  end
end

get '/questions/new' do
  @questions = Question.all 
  if logged_in?
    erb :'questions/new'
  else
    @errors = ['Must be logged in to post a question.']
    erb :'questions/index'
  end
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  erb :'questions/show'
end

# Mark answer as best
put '/questions/:id' do
  question = Question.find_by(id: params[:id])
  if current_author?(question)
    answer = Answer.find_by(id: params[:answer_id])
    question.best_answer = answer
    question.save
  end
  redirect "/questions/#{question.id}"
end
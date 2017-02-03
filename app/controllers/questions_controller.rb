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
    @errors = @question.errors.full_messages
    erb :'questions/new'
  end
end

get '/questions/new' do
  erb :'questions/new'
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @best_answer = Answer.find_by_id(@question.best_answer_id)
  @non_best_answers = @question.answers.reject{|answer| answer == @best_answer}

   

  erb :'questions/show'
end

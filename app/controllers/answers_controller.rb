post '/questions/:question_id/answers' do 
	#for testing
	session[:user_id] = 1
	#find the current question based on the url
	@question = Question.find_by_id(params[:question_id])
  @answers = @question.answers

	#create new answer from form info and current user login cookie
	@current_answer = @question.answers.new(body: params[:body], user: current_user)
	session[:user_id]=  nil

	if @current_answer.save
	 redirect "/questions/#{params[:question_id]}"
	else
		@errors = @current_answer.errors.full_messages
  	erb :'questions/show'
	end

end
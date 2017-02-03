post '/questions/:question_id/answers' do
	#find the current question based on the url
	@question = Question.find_by_id(params[:question_id])
  @answers = @question.answers
	@comments = @question.comments
	#create new answer from form info and current user login cookie

	@current_answer = Answer.new(body: params[:body], user: current_user, question_id: @question.id)
	if @current_answer.save
	 redirect "/questions/#{params[:question_id]}"
	else

		@errors = @current_answer.errors.full_messages
  	erb :'questions/show'
	end

end

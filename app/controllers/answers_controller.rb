post '/questions/:question_id/answers' do 
	#for testing

	#find the current question based on the url
	@question = Question.find_by_id(params[:question_id])
  @answers = @question.answers

	#create new answer from form info and current user login cookie
	# @current_answer = @question.answers.new(body: params[:body])
	@current_answer = Answer.new(body: params[:body], user: current_user, question_id: @question.id)

	if @current_answer.save
	 redirect "/questions/#{params[:question_id]}"
	else

		@errors = @current_answer.errors.full_messages
  	erb :'questions/show'
	end

end

put '/questions/:question_id' do
	current_answer = Answer.find_by_id(params[:answer_id])
	current_question = Question.find_by_id(params[:question_id])
	current_question.best_answer_id = current_answer.id
	current_question.save
		 
	redirect "/questions/#{current_question.id}"
end
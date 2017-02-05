post '/questions/:question_id/answers' do
	@question = Question.find_by_id(params[:question_id])
	@answer = Answer.new(body: params[:body], user: current_user, question: @question)
	if @answer.save && logged_in?
		redirect "/questions/#{@question.id}"
	else
  	erb :'questions/show'
	end

end

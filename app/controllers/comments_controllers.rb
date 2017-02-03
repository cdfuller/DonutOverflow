post '/questions/:question_id/comments' do
	#find the current question based on the url
	@question = Question.find_by_id(params[:question_id])
  @comments = @question.comments
  @answers = @question.comments

 	@current_comment = Comment.new(body: params[:body], user: current_user, commentable_id: @question.id, commentable_type: "Question")
	if @current_comment.save
	 redirect "/questions/#{params[:question_id]}"
	else

		@errors = @current_comment.errors.full_messages
  	erb :'questions/show'
	end

end

post '/answers/:answer_id' do
	#find the current question based on the url
  
	@answer = Answer.find_by_id(params[:answer_id])
  @comments = @answer.comments
  @answers = @answer.comments

 	@current_comment = Comment.new(body: params[:body], user: current_user, commentable_id: @answer.id, commentable_type: "Answer")
	if @current_comment.save
	 redirect "/questions/#{params[:answer_id]}"
	else

		@errors = @current_comment.errors.full_messages
  	erb :'answers/show'
	end

end

post '/answers/:id' do
  answer = Answer.find_by_id(params[:id])
  @question = answer.question

  @comment = Comment.new(body: params[:body], user: current_user, commentable: answer)
  if @comment.save
    redirect "/questions/#{@question.id}"
  else
    erb :'questions/show'
  end

end

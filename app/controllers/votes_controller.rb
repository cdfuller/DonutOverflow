post '/questions/:id/vote' do
  @question = Question.find_by(id: params[:id])
  @question.votes << Vote.new(value: params[:value])
  Vote.last.user = current_user
  @question.save
  erb :"question/show"
end
post '/questions/:id/vote' do
  vote = Vote.new(value: params[:value])
  vote.user = current_user
  vote.save

  @question = Question.find_by(id: params[:id])
  @question.votes << vote
  erb :"questions/show"
end
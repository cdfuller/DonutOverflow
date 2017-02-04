post '/questions/:id/vote' do 
  question = Question.find_by(id: params[:id])
  vote = question.votes.find_or_create_by(user: current_user)

  if params[:value].to_i == 0
    vote.destroy
  else
    vote.value = params[:value]
    vote.save
  end

  redirect "/questions/#{question.id}"
end
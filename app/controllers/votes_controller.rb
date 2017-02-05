post '/questions/:id/vote' do
  question = Question.find_by(id: params[:id])
  vote = question.votes.find_or_create_by(user: current_user)

  if params[:value].to_i == 0
    vote.destroy
  else
    vote.value = params[:value]
    vote.save
  end

  if request.xhr?
    content_type :json
    return {score: question.score}.to_json
  else
    redirect "/questions/#{question.id}"
  end
end

post '/answers/:id/vote' do
  answer = Answer.find_by(id: params[:id])
  vote = answer.votes.find_or_create_by(user: current_user)

  if params[:value].to_i == 0
    vote.destroy
  else
    vote.value = params[:value]
    vote.save
  end

  if request.xhr?
    content_type :json
    return {score: answer.score}.to_json
  else
    redirect "/questions/#{answer.question.id}"
  end
end

post '/comments/:id/vote' do
  comment = Comment.find_by(id: params[:id])
  vote = comment.votes.find_or_create_by(user: current_user)
  if params[:value].to_i == 0
    vote.destroy
  else
    vote.value = params[:value]
    vote.save
  end

  if request.xhr?
    content_type :json
    return {score: comment.score}.to_json
  else
    redirect "/questions/#{comment.question.id}"
  end
end

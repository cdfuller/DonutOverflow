## User visits homepage

'/' redirect to '/questions'

## User posts questions

GET '/questions'
POST '/questions'

GET '/questions/new'

## User answers questions

GET '/questions/:id'
POST '/questions/:id/answers'

## User can comment on answer or question

POST '/answers/:id' 
POST '/questions/:id/comments'

## Question poster can make one answer the best

PUT '/questions/:id'

## User can upvote comments

POST '/comments/:id/vote'

## User can upvote answers

POST '/answers/:id/vote'

## User can upvote questions

POST '/questions/:id/vote'

## User can register

GET '/users/new'
POST '/users'


## User can login

GET '/sessions/new'
POST '/sessions'
DELETE '/sessions'


## Loging in authorizes questions/answer/vote
	* Authorize within ERB
	* Authorized within routes
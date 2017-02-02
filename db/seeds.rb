kevin = {username:"kevin",email:"kevin@gmail.com",hashed_password:BCrypt::Password.create('password')},
savance =  {username:"savance",email:"savance@gmail.com",hashed_password:BCrypt::Password.create('password')},
cody = {username:"cody",email:"cody@gmail.com",hashed_password:BCrypt::Password.create('password')},
joe = {username:"joe",email:"joe@gmail.com",hashed_password:BCrypt::Password.create('password')}

User.create([kevin,savance,cody,joe])

Question.create([
  {title:"How do I use ruby?", body:"I have no idea what I'm doing!?!? Can someone give me the answer?", views:"10",user_id:"1",best_answer_id:"1"},
  {title:"Using Ajax with JS question", body:"What is Ajax? and why should I use it. Please explain to me why.", views:"1",user_id:"1",best_answer_id:"2"},
  {title:"Why isn't my rake file working?", body:"My rake file is as follows: \"Rake\". What am i doing wrong?", views:"0",user_id:"2",best_answer_id:"1"},
  {title:"What is the difference between pry and irb", body:"I am unfamiliar with either, what language are they for? Please teach me", views:"101",user_id:"2",best_answer_id:"2"},
  {title:"Why does my postgres database not load?", body:"I am using excel. Why can't i access my excel database from my Sinatra app?", views:"21",user_id:"3",best_answer_id:"1"},
  {title:"Why isn't my ajax request reaching my server?", body:"My ajax code is as follows: $.ajax = get request. Why doesn\'t this work? I don\'t know how much more explicit I can be", views:"8",user_id:"3",best_answer_id:"2"},
  {title:"Question on JQuery syntax.", body:"What is the correct syntax? Can someone please help out!??", views:"4",user_id:"4",best_answer_id:"1"},
  {title:"Can't seed my Sinatra app", body:"I currently have an empty Sinatra Skeleton. With no database. But it won't seed? Can someone please help?", views:"40",user_id:"4",best_answer_id:"2"}
])


Answer.create([
  {body:"You should download Ruby on ruby.com",question_id:1,user_id:2},
  {body:"You should actually try Python. It's a much more robust language",question_id:1,user_id:3},
  {body:"Ajax is super amazeballz. You should try it with Java, not Javascript",question_id:2,user_id:3},
  {body:"Why are you even here? If you don\'t how to use Javascript 100% efficiency you should quit programming.",question_id:2,user_id:4},
  {body:"Rake files are truly an amazing invention of mankind",question_id:3,user_id:1},
  {body:"You should make sure to populate your rake file with important information",question_id:3,user_id:3},
  {body:"Pry is much better, it shows colors",question_id:4,user_id:1},
  {body:"IRB is for real enthusiasts. Don't let the pry enthusiasts show you wrong.",question_id:4,user_id:4},
  {body:"Postgres is a tricky database. you have to have the correct user authentication to access the server. Go to stackoveflow.com to see better explanations",question_id:5,user_id:1},
  {body:"Postgres is a terrible datase. Don\'t ask those questions here.",question_id:5,user_id:2},
  {body:"Ajax requests need to be formatted a lot differently. Try to look up the documentation",question_id:6,user_id:4},
  {body:"Ajax requests are really tricky. Good Luck!",question_id:6,user_id:1},
  {body:"JQuery is Javascript. Don\'t forget.",question_id:7,user_id:1},
  {body:"JQuery is for Javascript users who like to cheat. ",question_id:7,user_id:2},
  {body:"Sinatra is out of date bro. Use Rails",question_id:8,user_id:3},
  {body:"Sinatra was a great singer. You should youtube his old performances",question_id:8,user_id:2}
])



Comment.create(

  [
  {body:"Why don\'t you ask the maker of ruby?",user_id:4,commentable_id:1,commentable_type:"question"},
  {body:"I disagree. C++ is the best option for creating web applications",user_id:2,commentable_id:2,commentable_type:"answer"},
  {body:"Ajax is asynchronous javascript something something??",user_id:1,commentable_id:2,commentable_type:"question"},
  {body:"Don't you mean Javascript, not Java",user_id:2,commentable_id:3,commentable_type:"answer"},
  {body:"Why are you using rake? why don\'t you use something else?",user_id:3,commentable_id:3,commentable_type:"question"},
  {body:"I agree. Rake is great!!",user_id:4,commentable_id:5,commentable_type:"answer"},
  {body:"There is no functional difference.",user_id:1,commentable_id:4,commentable_type:"question"},
  {body:"Colors are great!",user_id:2,commentable_id:7,commentable_type:"answer"},
  {body:"Is your computer turned on?",user_id:3,commentable_id:5,commentable_type:"question"},
  {body:"The ajax documentation is terrible",user_id:4,commentable_id:10,commentable_type:"answer"},
  {body:"Ajax isn't for javascript dude.",user_id:1,commentable_id:6,commentable_type:"question"},
  {body:"Ajax formatting is super hard!",user_id:2,commentable_id:11,commentable_type:"answer"},
  {body:"Is this guy really asking this question?",user_id:3,commentable_id:7,commentable_type:"question"},
  {body:"",user_id:4,commentable_id:14,commentable_type:"answer"},
  {body:"I like cheating ;)",user_id:1,commentable_id:8,commentable_type:"question"},
  {body:"Rails might be better, but Sinatra has a cooler name",user_id:2,commentable_id:15,commentable_type:"answer"}
]
)
Vote.create([
  {value:,user_id:1,voteable_id:1,voteable_type:"comment"},
  {value:,user_id:2,voteable_id:1,voteable_type:"comment"},
  {value:,user_id:3,voteable_id:1,voteable_type:"comment"},
  {value:,user_id:1,voteable_id:2,voteable_type:"comment"},
  {value:,user_id:2,voteable_id:2,voteable_type:"comment"},
  {value:,user_id:1,voteable_id:3,voteable_type:"comment"},
  {value:,user_id:2,voteable_id:3,voteable_type:"comment"},
  {value:,user_id:3,voteable_id:3,voteable_type:"comment"},
  {value:,user_id:4,voteable_id:3,voteable_type:"comment"},
  {value:,user_id:1,voteable_id:4,voteable_type:"comment"},
  {value:,user_id:1,voteable_id:10,voteable_type:"comment"},
  {value:,user_id:2,voteable_id:11,voteable_type:"comment"},
  {value:,user_id:1,voteable_id:1,voteable_type:"question"},
  {value:,user_id:2,voteable_id:1,voteable_type:"question"},
  {value:,user_id:1,voteable_id:2,voteable_type:"question"},
  {value:,user_id:3,voteable_id:2,voteable_type:"question"},
  {value:,user_id:1,voteable_id:3,voteable_type:"question"},
  {value:,user_id:3,voteable_id:3,voteable_type:"question"},
  {value:,user_id:4,voteable_id:3,voteable_type:"question"},
  {value:,user_id:1,voteable_id:5,voteable_type:"question"},
  {value:,user_id:3,voteable_id:5,voteable_type:"question"},
  {value:,user_id:2,voteable_id:5,voteable_type:"question"},
  {value:,user_id:1,voteable_id:1,voteable_type:"answer"},
  {value:,user_id:2,voteable_id:1,voteable_type:"answer"},
  {value:,user_id:3,voteable_id:2,voteable_type:"answer"},
  {value:,user_id:4,voteable_id:2,voteable_type:"answer"},
  {value:,user_id:1,voteable_id:3,voteable_type:"answer"},
  {value:,user_id:2,voteable_id:3,voteable_type:"answer"},
  {value:,user_id:3,voteable_id:3,voteable_type:"answer"},
  {value:,user_id:4,voteable_id:10,voteable_type:"answer"},
  {value:,user_id:1,voteable_id:11,voteable_type:"answer"},
  {value:,user_id:2,voteable_id:12,voteable_type:"answer"}
])




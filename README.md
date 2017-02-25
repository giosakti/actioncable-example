# README

To run this application you just have to run this:

```
rake db:create db:migrate
rails s -b 0.0.0.0
```

Voila! then you can access it on http://localhost:3000

## Steps executed when building this application

```
gem install rails
rails new id_ruby_vote
rails g scaffold question title:string body:text
rails g channel question
rails g model question_comment
rails g controller question_comments
rails g channel question_comment
```
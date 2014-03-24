require 'sinatra'

set :bind, '0.0.0.0' # This is needed for Vagrant

get '/' do
  "Hey, this is a web app"
end

get '/hello' do
  "Hello friends!"
end

post '/entries' do
  title = params[:title]
  body = params[:body]

  puts "Params: #{title} and #{body}"
end
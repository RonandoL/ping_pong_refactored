require('sinatra')
require('sinatra/reloader')
require('./lib/ping_pong')

get('/') do
  erb(:index)
end

get('/results') do
  @number = params.fetch('number').to_i
  @output = @number.ping_pong
  erb(:results_file)
end

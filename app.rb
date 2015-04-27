require('sinatra')
require('sinatra/reloader')
require ('./lib/triangles')
require('pry')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/triangle') do
  #binding.pry
  @triangle = Triangles.new(params.fetch('side_1').to_i(), params.fetch('side_2').to_i(), params.fetch('side_3').to_i())
  @type = @triangle.what_type()
  erb(:triangle)
end

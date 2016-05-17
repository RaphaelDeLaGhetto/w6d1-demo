
before '/' do
  @username = 'Dan'
end

#before do
#  if !@username
#    halt(401, erb(:boom))
#  end
#end


get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb(:contact)
end

not_found do
#  redirect '/'
  status 420
  erb :boom
end
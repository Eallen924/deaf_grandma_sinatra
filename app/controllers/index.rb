get '/' do
  p params
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  input = params[:user_input]
  if input == input.upcase
    grandma = "No, not since 1983!"
  else
    grandma = "HUH?!?! SPEAK UP!"
  end
  redirect "/?grandma=#{grandma}"
end

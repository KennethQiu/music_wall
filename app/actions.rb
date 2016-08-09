# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @song = Song.new
  @songs = Song.all
  erb :'songs/index'
end

post '/songs' do
  @song = Song.new(
    title: params[:title],
    author: params[:author],
    url: params[:url]
    )
  if @song.save
    redirect '/songs'
   else 
    erb :'songs/index'  
  end
end 
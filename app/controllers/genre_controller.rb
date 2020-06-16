class GenreController < ApplicationController

     # 7 RESTful routes for Genres

   #shows all the genres
   get '/genres' do
        @genres = Genre.all
        erb :'genres/index'
   end

   #new genre form
   get '/genres/new' do
    erb :'genres/new'
   end

   #show 1 genre
   get '/genres/:id' do
    "show"
   end


   #edit 1 genre
   get '/genres/:id/edit' do
   end

   #create 1 genre
   post '/genres' do
    genre = Genre.new(name: params[:name])
    genre.save
    redirect to '/genres'  #makes a new get request
   end

   #update 1 genre
   patch '/genres/:id' do

   end

   #delete 1 genre
   delete '/genres/:id' do
   end

end
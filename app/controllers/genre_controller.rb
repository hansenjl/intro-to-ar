class GenreController < ApplicationController

   # 7 RESTful routes for Genres

   #show all the genres
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
     @genre = Genre.find(params[:id])
     erb :'genres/show'
   end


   #edit 1 genre
   get '/genres/:id/edit' do
     @genre = Genre.find(params[:id])
     erb :'genres/edit'
   end

   #create 1 genre
   post '/genres' do
    genre = Genre.new(name: params[:name])
    genre.save
    redirect to '/genres'  #makes a new get request
   end

   #update 1 genre
   patch '/genres/:id' do
     genre = Genre.find(params[:id])
     # genre.update(name: params[:name])
     genre.update(params[:genre]) #only works if you've nested params
     redirect to "/genres/#{genre.id}"
   end

   #delete 1 genre
   delete '/genres/:id' do
    # genre = Genre.find(params[:id])
     Genre.destroy(params[:id])
     # genre.destroy
     redirect to '/genres'
   end

end
class UserController < ApplicationController

    get '/signup' do
        # loading the form to signup
        erb :'users/new'  #file
    end

    # post '/signup' do
    #     #creating the user AND logging them in
    #     if params[:user].values.any?{|v| v.blank? }
    #     # if params[:user][:username] == "" || params[:user][:email] == "" || params[:user][:password] == ""
    #         redirect to '/signup'
    #     else
    #         user = User.create(params[:user]) #create our user
    #         session[:user_id] = user.id    # log them in
    #         redirect to '/genres'
    #     end
    # end


    post '/signup' do
        #creating the user AND logging them in
        user = User.new(params[:user]) #create our user
        if user.save
            session[:user_id] = user.id    # log them in

            redirect to '/genres'
        else
            @error = user.errors.full_messages.join("  -  ")
            erb :'users/new'
        end
    end

    ## in a SessionsController
    get '/logout' do
        session.clear
        redirect to '/login'
    end


    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        #find the user by their username
        user = User.find_by_username(params[:user][:username])
        if user && user.authenticate(params[:user][:password])
        #check that their password was correct
            session[:user_id] = user.id    # log them in
            redirect to '/genres'
        else
            redirect '/login'
        end
    end
end
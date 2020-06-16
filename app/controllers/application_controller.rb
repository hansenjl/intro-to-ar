class ApplicationController < Sinatra::Base

    configure do
        set :views, 'app/views'
    end

    get '/' do
        'main page'
    end






end
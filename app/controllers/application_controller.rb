class ApplicationController < Sinatra::Base

    get '/' do

        Movie.all.map do |m|
            m.name
        end.join("$$")

        <<-Hello
            <!DOCTYPE html>
            <html>
                <head>
                    <title>Flatiron</title>
                </head>
                <body>
                     <h1>Hello!</h1>
                     <h2>Have a great Thursday</h2>
                     <p>this is our first sinatra app</p>
                </body>
            </html>

        Hello

    end
end
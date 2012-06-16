require 'sinatra/base'
require 'haml'
require 'sass'

class GAEventDemo < Sinatra::Base

  get '/' do
    @title = 'Root Page'
    haml :index
  end

  get('/main.css') { scss :main }

end

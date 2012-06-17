require 'sinatra/base'
require 'haml'
require 'sass'

class GAEventDemo < Sinatra::Base

  get '/' do
    @title = 'Form Page'
    haml :index
  end

  post'/formsubmit' do
    @title = 'Thank you for submitting'
    haml :result
  end

  get('/main.css') { scss :main }

end

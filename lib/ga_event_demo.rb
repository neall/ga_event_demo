require 'sinatra/base'
require 'haml'
require 'sass'

class GAEventDemo < Sinatra::Base

  helpers do
    def ga_setup_js
      "var _gaq = _gaq || [];
_gaq.push(['_setAccount', '#{ENV['GA_EVENT_DEMO_GA_ACCOUNT']}']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();"
    end
  end

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

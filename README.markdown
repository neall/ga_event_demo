# Google Analytics Event Tracking Demo

I made this to help me figure out how to use Google Analytics' event tracking
feature.

## Setup

Assuming you already have Ruby and the Bundler gem installed:

    $ export GA_EVENT_DEMO_GA_ACCOUNT=[analytics account #]
    $ bundle
    $ rackup

Once you have it running locally, you can put it on Heroku:

    $ gem install heroku
    $ heroku app:create -s cedar
    $ heroku config:add GA_EVENT_DEMO_GA_ACCOUNT=[analyitics account #]
    $ git push heroku master

require 'rubygems'
require 'sinatra'

configure :production do
  require 'newrelic_rpm'
  require 'new_relic/agent/instrumentation/sinatra'   
end


get '/' do
  "Hello"
end
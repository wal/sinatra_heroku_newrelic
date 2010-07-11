require 'rubygems'
require 'sinatra'

configure :production do
    ENV['APP_ROOT'] ||= File.dirname(__FILE__)
    $:.unshift "#{ENV['APP_ROOT']}/vendor/plugins/rpm/lib"
    require 'newrelic_rpm'
end


get '/' do
  "Hello"
end
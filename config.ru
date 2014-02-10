require 'bundler/setup'
Bundler.require(:default)

class WebApp < Sinatra::Base
  get '/' do
    'Hello, World'
  end
end

run WebApp.new

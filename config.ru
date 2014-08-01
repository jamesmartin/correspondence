require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'sinatra/asset_pipeline'

require 'correspondence'

run Correspondence::App

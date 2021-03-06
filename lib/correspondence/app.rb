require 'sinatra/asset_pipeline'

module Correspondence
  class App < Sinatra::Base
    register Sinatra::AssetPipeline

    get '/letter/:name' do
      @name = params[:name]
      begin
        haml "letter_to_#{@name.downcase}".to_sym
      rescue Errno::ENOENT
        haml :letter
      end
    end
  end
end

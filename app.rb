require 'sinatra/asset_pipeline'

class WebApp < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end
end

class TitlesController < ApplicationController

  get '/titles' do
    erb :'titles/index'
  end
end

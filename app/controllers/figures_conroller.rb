class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  post '/figures' do
    @figure = Figure.new(params[:figure])
    @figure.save
    erb :'figures/show'
  end

  get '/figure/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'figure/show'
  end

  get '/figure/:id/edit' do
    @landmark = Landmark.all.find_by(id: params[:id])
    erb :'figure/edit'
  end

  post '/figure/:id' do
    @landmark = Landmark.all.find_by(id: params[:id])
    @landmark.update(params[:landmark])
    erb :'figure/show'
  end

end

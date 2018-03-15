require 'dotenv/load'
require 'bundler'
require 'net/http'
require 'json'
require 'ConnectSDK'


Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do 
    user_input= params[:topic]  
    @final= get_quote(user_input)
    @img= search_image(user_input)
    erb :result
  end 
  
  
end

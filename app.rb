require_relative 'config/environment'
require "pry"

class App < Sinatra::Base


  get "/" do
    erb :user_input
  end


  post "/piglatinize" do
    text = params[:user_phrase]
    latinized = PigLatinizer.new
    @latinized_text = latinized.piglatinize(text)
    #binding.pry


    erb :piglatinize
  end

  # get "/piglatinize" do
  #
  #
  #
  #   erb :piglatinize
  # end


end

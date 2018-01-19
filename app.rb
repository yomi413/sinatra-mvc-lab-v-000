require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new
    @pig_latin = new_phrase.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end

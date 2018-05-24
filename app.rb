require 'sinatra'
require_relative 'lotto.rb'

get '/' do
	erb :home	
end

post '/play' do
	number1 = params[:number1]
	number2 = params[:number2]
	number3 = params[:number3]
	number4 = params[:number4]
	number5 = params[:number5]
	number6 = params[:number6]
	redirect '/play?number1=' + number1 + '&number2=' + number2 + '&number3=' + number3 + '&number4=' + number4 + '&number5=' + number5 + '&number6=' + number6  
end

get '/play' do
	number1 = params[:number1]
	number2 = params[:number2]
	number3 = params[:number3]
	number4 = params[:number4]
	number5 = params[:number5]
	number6 = params[:number6]
	erb :play, :locals => {:number1 => number1, :number2 => number2, :number3 => number3, :number4 => number4, :number5 => number5, :number6 => number6}
end

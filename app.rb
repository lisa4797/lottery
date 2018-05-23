require 'sinatra'
require_relative 'lotto.rb'
enable :sessions

get '/' do
	erb :home	
end

post '/play' do
	session[:number1] = params[:number1]
	session[:number2] = params[:number2]
	session[:number3] = params[:number3]
	session[:number4] = params[:number4]
	session[:number5] = params[:number5]
	session[:number6] = params[:number6]
	redirect '/play'
end

get '/play' do
	number1 = session[:number1]
	number2 = session[:number2]
	number3 = session[:number3]
	number4 = session[:number4]
	number5 = session[:number5]
	number6 = session[:number6]
	erb :play, locals => {:number1 => number1, :number2 => number2, :number3 => number3, :number4 => number4, :number5 => number5, :number6 => number6}
end



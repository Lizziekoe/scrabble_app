require 'sinatra'
require 'sinatra/reloader'
require './lib/scrabble_score'


get("/") do
  erb(:home)
end

get("/results") do
  @score = params.fetch("input_word").scrabble_score()
  @word = params.fetch("input_word")
  erb(:results)
end

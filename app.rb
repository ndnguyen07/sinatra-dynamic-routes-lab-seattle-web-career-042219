require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    squrt = params[:number].to_i * params[:number].to_i
    squrt.to_s
  end

  get "/say/:number/:phrase" do
    params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") << (".")
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      answer= params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      answer = params[:number1].to_i / params[:number2].to_i
    elsif 
      answer = "error"
    end
    answer.to_s
  end
end
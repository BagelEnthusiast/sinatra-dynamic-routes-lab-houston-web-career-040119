require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
    # #------
    #   params[:number].to_i.times do
    #     "#{params[:phrase]}"
    #   end
    # #------
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words_array = []
    params.values.each do |value|
      words_array << value
    end 
    "#{words_array.join" "}."
    # @word1 = params[:word1]
    # @word2 = params[:word2]
    # @word3 = params[:word3]
    # @word4 = params[:word4]
    # @word5 = params[:word5]

    # "#{@word1 + @word2 + @word3 + @word4 + @word5}"
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    when "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    when "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    when "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient}"
    end
  end
end

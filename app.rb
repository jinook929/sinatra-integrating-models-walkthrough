require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    @analyzed_text = TextAnalyzer.new(text_from_user)
    # @num_of_words = text_from_user.split.count
    # @vowels = text_from_user.count("AEIOUaeiou")
    # @consonants = text_from_user.count("^a^e^i^o^u^A^E^I^O^U^ \\w")
    # @most_common_letter = ""
    # @most_common_letter_count = nil
    # binding.pry
    erb :results
  end
end

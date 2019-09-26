# require modules here
require "yaml"

def load_library(file)
  simple_view = YAML.load_file(file)
  new_hash = Hash.new
  new_hash = {
    "get_meaning" => {
      #Japanese emoticons => "meaning",
      #Japanese emotoicons => "meaning"
    },
    "get_emoticon" => {
      #English emoticons => "meaning",
      #English emoticons => "meaning"
    }
  }
  simple_view.each do |key, value|
    value.each_with_index do |emo, index|
      if index == 0
        new_hash["get_emoticon"][emo] = value[1]
      elsif index == 1
        new_hash["get_meaning"][emo] = key
      end
    end
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

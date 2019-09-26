# require modules here
require "yaml"

def load_library(file)
  simple_view = YAML.load_file(file)
  new_hash = Hash.new
  new_hash = {
    "get_meaning" => {
      #japanese - > meaning
    },
    "get_emoticon" => {
      #english - > japanese
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

def get_japanese_emoticon(file, emoticon)
  full_file = load_library(file)
  full_file[get_emoticon][emoticon]
end

def get_english_meaning
  # code goes here
end

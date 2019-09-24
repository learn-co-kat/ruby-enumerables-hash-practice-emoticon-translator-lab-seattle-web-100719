require 'yaml'

def load_library(file_path)
  x = YAML.load_file(file_path)
  x
  new_hash = {}
  new_hash['get_meaning'] = {}
  new_hash['get_emoticon'] = {}

  x.each do |k, v|
  new_hash['get_meaning'][v[1]] = k
    new_hash['get_emoticon'][v[0]] = v[1]
  end
  new_hash
end

def get_japanese_emoticon(path, emoticon)
  sorted_emo = load_library(path)
  # y = sorted_emo[:new_hash][:get_emoticon]
  
      if y.has_key?("#{emoticon}")
        return y[:"#{emoticon}"]
      else
      return 'Sorry, that emoticon was not found'
  end

end

def get_english_meaning
  # code goes here
end
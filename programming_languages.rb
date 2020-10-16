def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |key, style|
    style.each do |lang, value|
      new_hash[lang] = value
      new_hash[lang][:style] = [key]
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
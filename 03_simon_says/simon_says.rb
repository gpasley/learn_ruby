def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  ([str] * num).join(" ")
end

def start_of_word(str, num=0)
  str[0...num]
end

def first_word(str)
  str = str.split(" ")
  str[0]
end

def titleize(str)
  words = str.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
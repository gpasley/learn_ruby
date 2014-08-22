

def translate(str)
 
  @str = str.split.map do |word|
    if word.start_with?("a","e","i","o","u")
      word = word + "ay"
    else
      chr = word.chars[0]
      chr2 = word.chars[1]
      chr3 = word.chars[2]
      if not(chr2.start_with?("a","e","i","o","u")) || (chr + chr2 == "qu")
        if not(chr3.start_with?("a","e","i","o","u")) || (chr2 + chr3 == "qu")
          chr = chr + chr2 + chr3
          word = word[3..word.length] + chr + "ay"
        else
          chr = chr + chr2
          word = word[2..word.length] + chr + "ay"
        end
      else
        word = word[1..word.length] + chr + "ay"
      end      
    end    
  end
  @str = @str.join(" ")
  
    
end

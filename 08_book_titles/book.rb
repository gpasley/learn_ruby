class Book 
  attr_accessor :title
  
  def title=(str)    
    @title = str.split.map do |word|             
      if %w(and the in a of an).include?(word)
        word
      else
        word.capitalize     
      end
    end
    @title.first.capitalize!
    @title = @title.join(" ")
  end
  
  def title
    @title
  end
end
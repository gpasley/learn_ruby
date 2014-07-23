# def greeting
#   fr = Friend.new
#   fr.greeting = "whuh"
# end

class Friend
  def greeting(name="")
    if name == ""
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end
end
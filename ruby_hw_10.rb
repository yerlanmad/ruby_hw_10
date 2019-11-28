def perform(str, array = [])
  if block_given?
    result = yield(str, array[])
  else
    puts "Please give me instructions"
  end
end

perform("find words", ["Hello, Mike", "My name is", "What is the beatuful day"]) do |str, array|
  if str == "find words"
    array.map! { |el| el.count(" ") + 1 }
    

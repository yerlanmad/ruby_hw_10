def perform(insturction, array = [])
  if block_given?
    puts result = yield(insturction, array)
  else
    puts "Please give me instructions"
  end
end

perform("find words", ["Hello, Mike", "My name is", "What is the beatuful day"]) do |insturction, array|

  if insturction == "find words" && array.all? { |el| el.is_a? String }
    el_length = array.map { |el| el.split(/\s+/).length }
    array[el_length.index(el_length.max)]
  else
    error = "Wrong instructions"
  end

end

perform("parse numbers", [9, 1, 5, 7]) do |insturction, array|

  if insturction == "parse numbers" && array.all? { |el| el.is_a? Integer }
    hash_of_numbers = {}
    array.each_with_index { |el, index| hash_of_numbers[index + 1] = el }
    hash_of_numbers
  else
    error = "Wrong instructions"
  end

end

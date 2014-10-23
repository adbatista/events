
num_tests = gets.to_i
selected_line = []
num_tests.times do |test_case|
  awser = []
  2.times do |arrangement|
    awser[arrangement] = gets.chomp.to_i

    selected_line ||= []
    4.times do |row|
      line = gets.split
      # p line
      selected_line[arrangement] = line if  row+1 == awser[arrangement]
    end
    # puts
    # p awser
    # p selected_line
    # puts
  end

  intersection = selected_line[0] & selected_line[1]
  # p intersection
  # puts
  solution = case intersection.count
  when 1
    intersection[0]
  when 0
    "Volunteer cheated!"
  else
    "Bad magician!"
  end
  puts "Case ##{test_case +1}: #{solution}"
end
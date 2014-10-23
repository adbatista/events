# test_cases = gets.to_i

# test_cases.times do |test_case|
#   cookies_per_second = 2
#   farm_cost, cookies_extra, cookies_objective = gets.split.map &:to_f
#   spend_time = 0.0
#   # while true
#   4.times do |i|
#     time_to_farm = farm_cost / cookies_per_second
#     time_to_objective = cookies_objective / cookies_per_second

#     puts "time farm #{time_to_farm}"
#     puts "time objective #{time_to_objective}"
#     puts "cookies_per_second : #{cookies_per_second}"

#     spend_time += time_to_farm
#     puts "Time Spend + time_to_objective: #{spend_time+time_to_objective}\n\n"

#     puts "Time Spend: #{spend_time}\n\n"

#     if i == 3
#       puts "#"*50
#       puts "cookies_per_second #{cookies_per_second}"
#       puts "============================ SOLUTION ========================================"
#       puts "#{spend_time + time_to_objective}"
#       puts "============================ SOLUTION ========================================"
#       puts "#"*50
#     end
#     cookies_per_second += cookies_extra
#   end
#   # spend_time += cookies_objective/cookies_per_second
#   puts "Case ##{test_case+1}: %.7f" % spend_time
# end

test_cases = gets.to_i

test_cases.times do |test_case|
  cookies_per_second = 2
  farm_cost, cookies_extra, cookies_objective = gets.split.map &:to_f
  spend_time = 0.0
  current_spend_time = Float::MAX
  while true
    time_to_farm = farm_cost / cookies_per_second
    time_to_objective = cookies_objective / cookies_per_second

    break unless current_spend_time > spend_time + time_to_objective

    current_spend_time = spend_time + time_to_objective
    spend_time += time_to_farm
    cookies_per_second += cookies_extra
  end
  puts "Case ##{test_case+1}: %.7f" % current_spend_time
end


































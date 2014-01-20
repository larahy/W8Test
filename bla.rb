def is_a_2014_bank_holiday?(date)
  days = [[18,21], [5,26], [25], [25,26]]
  months = [4,5,8,12]
  bhd = days.map {|x| x.any? {|i|i == date.day} ? true : false }
  bhm = months.map {|x| x == date.month ? true : false }
  day_index = bhd.each_with_index.map {|a, i| a == true ? i : nil }
  month_index = bhm.each_with_index.map {|a, i| a == true ? i : nil }
  array = month_index & day_index 
  array.empty? ? false : true 
end

p is_a_2014_bank_holiday?(Time.new(2014, 12, 26))

 

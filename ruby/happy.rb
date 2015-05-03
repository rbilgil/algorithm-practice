def happy(num, previous_nums = [])
	sum = num.to_s.each_char.inject(0) do |acc, digit|
		acc += digit.to_i ** 2
	end

	if sum > 1 && !previous_nums.include?(sum)
		happy(sum, previous_nums << sum)
	else
		sum
	end
end

1000.times do |num|
	p num if happy(num) == 1
end
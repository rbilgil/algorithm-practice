def time_taken(func, *args)
	start = Time.now
		result = self.send(func, *args)
	stop = Time.now

	stop - start
end

def find_time_complexity(func)
	results = []
	ns = []
	n = 100
	result = 0
	while (result < 0.01)
		n *= 2
		ns << n
		result = 100.times.inject(0) { |acc| 
			acc += time_taken(func, (1..n), rand(1..n)) 
		} / 100

		p result
		results << result
	end

	# only take values that took longer than 0.0 seconds
	ns, results = ns.zip(results).select { |i| i[1] > 0.0 }.transpose

	get_array_diff(results)
end

def get_array_diff(array)
	array.each_cons(2).map{ |a, b| 
		if a > 0 
			b.to_f / a 
		else
			0
		end
	}
end



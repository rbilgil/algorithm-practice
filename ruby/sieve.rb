# Implement various ways of generating primes, including the sieve of Eratosthenes
# and more involved variations
# found in https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

def sieve(num_primes)
	nums_list = *(2..num_primes)
	list_of_multiples = []
	
	nums_list.each { |i| 
		next if list_of_multiples.include? i
		nums_list.each { || }
		list_of_multiples << i * trial if i * trial <= num_primes
	}

	nums_list - list_of_multiples
end

def trial_division(num_primes)
	nums = (2..num_primes)
	primes = nums.select { |num|
		lim = nums.take_while { |n| n * n <= num }.max.to_i
		!(2..lim).any? { |i| num % i == 0 }	
	}
end

def get_primes(num_primes, method)
	start = Time.now
		primes = self.send(method, num_primes)
	stop = Time.now

	p "Time taken: #{stop - start}"
	primes
end

sieve_primes = get_primes 5000, :sieve
div_primes = get_primes 5000, :trial_division
p sieve_primes - div_primes

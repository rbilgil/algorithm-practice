# An apartment with n floors. You have two eggs. Eggs only break if >= some floor x, and don't break if < x.
# Find the floor x at which eggs break, assuming you can reuse unbroken eggs.
# Use minimal comparisons

require_relative 'time_taken'

def sequential_search(floors, floor)
	floors.each do |i|
		return i if i == floor
	end
end

def binary_search(floors, floor)
	
end	

def get_floor(num_floors)
	random_floor = rand(1..num_floors)
end

complexities = {
	sequential_search: find_time_complexity(:sequential_search),
	#binary_search: find_time_complexity(:binary_search)
}

complexities.each do |key, val|
	p "#{key.to_s.gsub("_", " ").capitalize}: #{val}"
end



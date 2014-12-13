def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(list)
	last = list.pop
	if last.nil?
		sum = 0
	else
		list.push(last)
		sum = 0
		list.each do |num|
			sum = sum + num
		end
	end
	sum
end

def multiply(*num)
	num.inject() {|product, multiplier| product * multiplier}
end

def power(base, power)
	result = base
	(power - 1).times do 
		result *= base
	end
	result
end

def factorial(num)
	if num <= 0
		total = 0
	else 
		total = 1
		while num > 1
			total *= num 
			num -= 1
		end	
	end	
	total	
end
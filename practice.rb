# puts "Enter the string"
# n = gets.chomp
# a = ""
# (n.length-1).downto(0) do |i|
#  a += n[i]
# end
# if (n == a)
#     puts "The string is a palindrome"
# elsif n.include?("m")
#     puts "Include strin"
# end
# capital_city = "Delhi"

# unless capital_city == "Delhi"
#     puts "The capital city is not Mumbai"
# else
#     puts "The capital city is Delhi"
# end

# n = (5 == 5)? "that is not write": "that is write"
# puts n


# test = ["sjhds", "sdhjhs", "madam", "hello"]
# d = []
# for i in (test.length-1).downto(0)
#    d << test[i]
# end

# puts d.inspect

# my_hash = {}

# my_hash[:age] = 40
# my_hash[:age] = 30
# my_hash[:age] = 20
# # puts my_hash.inspect
# my_hash.each do |key,value|
#     puts "#{key} : #{value}" if value < 30
# end
# my_hash = {name: "John", age: 25, city: "New York"}
# my_hash1 = {sjh: "monesh", sada: 23, sa: "New York"}
# t = my_hash.merge(my_hash1)
# puts t.inspect
# def test(age)
# case
# 	when age < 18 
# 			puts "You are a minor"
# 	when age >= 18 && age < 65
# 			puts "You are an adult"
# 	else
# 			puts "You are a senior citizen"
# 	end
# end

# test(7)

# def splat_operator(*args)
# 	if args.count == 1
# 		return "You have passed one argument: #{args[0]}"
# 	else
# 		return "You have passed multiple arguments: #{args.join(', ')}"
# 	end  
# end


# # puts splat_operator("Hello","monesh", "soni")
# s = "Hello World from Ruby"
# a = s.split(" ").to_a
# # puts a
# puts a.map { |word| word }.join("   _   ")

# def splat_operator(first_name , *args , last_name)
# 	puts first_name
# 	if args.count == 1
# 		puts "1 arguments"
# 	elsif args.count == 2
# 		puts "args 2"
# 	end
# 	puts last_name
# end
# splat_operator("monesh", "sakj", "soni")

# def greet
# 	puts "Hello!"
# 	yield
# 	puts "Goodbye!"
# end


# greet do
# 	puts "How are you?"

# 	puts "you are doing today?"
# end

# is_even = Proc.new  {|num| num.odd? }


# numbers = [1, 2, 3, 4, 5, 6]
# even_numbers = numbers.select(&is_even)
# puts even_numbers.inspect

# test = Proc.new  do
# 	puts "Hello from the Proc!"
# 	print "This is another line inside the Proc."
# end

# puts test.call


# def my_lambda
# 	l = -> {
# 		return "Hello from the lambda!"
# 	}
# 	text = l.call
# 	puts text
# 	return "This is after the lambda."
# end

# puts my_lambda

# def my_proc
# 	p = Proc.new { return "Hello from the Proc!" }
# 	text = p.call
# 	puts text

# 	return "This is after the Proc."
# end
# puts my_proc


# begin
# 	a = 100/0
# 	rescue ZeroDivisionError
# 		puts "Division by zero is not allowed"
# 	end

# class Calculator
# 	def sum(a,b)
# 		a+b
# 	end
# end

# calc = Calculator.new
# puts calc.sum(5,10)


# class Person
# 	@@count = 0
# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 		@@count += 1
# 	end

# 	def display_info
# 		puts "Name: #{@name}, Age: #{@age}"
# 	end

# 	def self.total_people
# 		@@count
# 	end
# end

# per = Person.new("Monesh", 24)
# per = Person.new("dj", 24)

# per.display_info
# puts Person.total_people


# class Person
# 	attr_reader :name
# 	attr_writer :age
# 	attr_accessor :city
# 	def initialize(name, age, city)
# 		@name = name
# 		@age = age
# 		@city = city
# 	end

# 	def display_info
# 		puts "Name: #{@name}, Age: #{@age}, City: #{@city}"
# 	end
# end

# Person1 = Person.new("Monesh", 24, "New York")
# Person1.display_info
# puts Person1.name
# Person1.name = "Los Angeles"
# # Person1.age = 25
# # Person1.city = "Los Angeles"
# # Person1.display_info


# module Actions
# 	def walk
# 		puts 192+23
# 	end

# 	def eat
# 		puts "#{@name} is eating."
# 	end
# end

# class Person
# 	include Actions
# end

# p = Person.new
# p.walk

# module Greetings
# 	def greet
# 		puts "Hello! from Extend!"
# 	end
# end

# class Test
# 	extend Greetings
# end

# Test.greet
# require 'set'

# test_set = Set.new([1, 2, 3, 4, 5])
# test_set.add(6)
# mul_arr = []
# test_set.each do |num|
# 	mul_arr << num * 2
# end

# puts mul_arr.inspect
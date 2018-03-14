###
CoffeeScript uses its own version of loops called "comprehensions"
which replace for/each loops, map, filter, and select
###

myarr = ['one', 'two', 'three', 'four', 'five']

console.log(num) for num in myarr #foreach loop in coffeescript.

console.log(i) for num, i in myarr #for i, v in loop in coffeescript

console.log(num) for num in myarr when num isnt 'three' #foreach exclude an element

console.log(i) for i in [10..0]

names = ["Ryan", "Jacob", "Arthur", "Mike", "Michael", "Jamie"]

shortNames = (name for name in names when name.length < 5)
console.log(shortNames)

#Regular while loop
i = 0;
i++ while i < 10
console.log(i)

i-- until i < 10
console.log(i)

#while as an expression
num = 10
count = while num -= 1
	console.log("The count is: #{num}")


for i in [0..-10]
	do (i) ->
		console.log(i);

###
CoffeeScript uses ranges like Python, with .. being 
inclusive, and ... excluding the last value
###

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
middle = numbers[3...-2]
end = numbers[-2..]
numbers[0..3] = [10, 9, 8, 7]
console.log(numbers)

###
CoffeeScript comparison and math operators
###

console.log(5 == '5'); #===
console.log(5 is 5); #===

console.log 10 / 2.4 #10 / 2.4
console.log 10 // 2.4 #Math.min(10 / 2.4)

a = null;
b = 17;
console.log a? #is a defined?
console.log a ? b #if a is undefined, b
console.log b ?= a #if b is defined, assign to a

[a, b] = [b, a]
console.log "a is: #{a} and b is: #{b}"

###
CoffeeScript classes with inheritance. Use @ before a property
to mean "this" which can also make something static
###

class Friend
	constructor: (@name, @age, @school) ->
	talk: ->
		console.log "My name is #{@name}"
	addAge: (years) ->
		@age += years

class Deaf extends Friend
	sign: ->
		@talk()
	talk: ->
		console.log "ME NAME #{this.name}"


pablo = new Friend "Pablo", 16, "School A"
pablo.talk()
console.log pablo.name
pablo.addAge(10)
console.log pablo.age

params = ["Michelle", 17, "School B"]
michelle = new Friend params...
console.log michelle.school

colton = new Deaf("Colton", 20, "Florida School for the Deaf")
colton.sign()

###
CoffeeScript conditional statements
###

q = 0
q = 10 if q is 0
console.log q

if q is 10
	console.log "q is still 10"

go = (place) ->
	console.log "Going to #{place}"
day = "wednesday"
switch day
	when "friday", "saturday" then go "party"
	when "sunday" then go "church"
	else go "school"

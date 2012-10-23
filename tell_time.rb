
def seconds_in_minutes(minutes)
	seconds = minutes * 60
end

#seconds_in_minutes(3)

def minutes_in_hours(hours)
	minutes = hours * 60
end

def hours_in_days(days)
	hours = days * 24
	
end


def days_in_weeks(weeks)
	days = weeks * 7
end

#days_in_weeks(4)

def weeks_in_years(years)
	weeks = years * 52
	#puts weeks.to_s
end

#weeks_in_years(4)


def hours_in_years
	24 * 365
end	

#Hours in a year
 
puts "There are " + hours_in_years.to_s + " hours in a year."

#Minutes in a decade

puts "There are " + (10 * weeks_in_years(days_in_weeks(hours_in_days(minutes_in_hours(1))))).to_s + " minutes in a decade."

#Age in seconds
def age_in_seconds(years)
	years * weeks_in_years(days_in_weeks(hours_in_days(minutes_in_hours(seconds_in_minutes(1)))))
end

puts "I am 29 years old, so I am " + age_in_seconds(25).to_s + " seconds old."

# 1,111 million seconds old

def age_from_seconds(seconds)
	seconds / weeks_in_years(days_in_weeks(hours_in_days(minutes_in_hours(seconds_in_minutes(1)))))
end

puts "You are " + age_from_seconds(1111000000).to_s + " yeas old."

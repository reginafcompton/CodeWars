require "date"

def unlucky_days(year)
	dates = get_dates(year)

	results = 0
	dates.each do |date|
		results += 1 if date.friday? && date.day == 13
	end
	results
end

def get_dates(yr)
	start_date = Date.new(yr)
	dates = []

	until start_date.year == yr + 1
		dates << start_date.next
		start_date = start_date.next
	end
	dates
end

p unlucky_days(1001)
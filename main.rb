#Greeting and Directions
puts "Welcome to Expense! Your trusted travel expense companion!"
puts 
puts "Please provide some information for each of your trips. Please note, dollar signs ($) or other symbols are not necessary."
puts

#Reading in Trip One
puts "Please enter the following for Trip 1"
puts
puts "Cost of round trip flight =>"
trip1_ticket = gets.chomp
puts	
puts "How many bags did you check? =>"
trip1_num_bags = gets.chomp.to_i
puts
puts "Total price of your hotel =>"
trip1_hotel_cost = gets.chomp
puts
puts
#Reading in Trip Two
puts "Please enter the following for Trip 2"
puts
puts "Cost of round trip flight =>"
trip2_ticket = gets.chomp
puts
puts "How many bags did you check? =>"
trip2_num_bags = gets.chomp.to_i
puts
puts "Total price of your hotel =>"
trip2_hotel_cost = gets.chomp
puts
puts
#Reading in Trip Three
puts "Please enter the following for Trip 3"
puts
puts "Cost of round trip flight =>"
trip3_ticket = gets.chomp
puts
puts "How many bags did you check? =>"
trip3_num_bags = gets.chomp.to_i
puts
puts "Total price of your hotel =>"
trip3_hotel_cost = gets.chomp
puts
puts

# Calculations Baggage Cost
trip1_bag_cost = trip1_num_bags * 50
trip2_bag_cost = trip1_num_bags * 50
trip3_bag_cost = trip1_num_bags * 50
 
# Calculations Total Trip Cost (individual trips)
trip1_total_cost = trip1_hotel_cost.to_f.round(2) + trip1_bag_cost.to_f.round(2) + trip1_ticket.to_f.round(2)
trip2_total_cost = trip2_hotel_cost.to_f.round(2) + trip2_bag_cost.to_f.round(2) + trip2_ticket.to_f.round(2)
trip3_total_cost = trip3_hotel_cost.to_f.round(2) + trip3_bag_cost.to_f.round(2) + trip3_ticket.to_f.round(2)
 
# Calculations for Expenses Grand Total
all_exp_total = trip1_total_cost.to_f.round(2) + trip2_total_cost.to_f.round(2) + trip3_total_cost.to_f.round(2)
 
# Calculations for Cost Percentages
trip1_percentage = trip1_total_cost.to_f / all_exp_total.to_f * 100
trip1_perc_round = trip1_percentage.to_i
trip2_percentage = trip2_total_cost.to_f / all_exp_total.to_f * 100
trip2_perc_round = trip2_percentage.to_i
trip3_percentage = trip3_total_cost.to_f / all_exp_total.to_f * 100
trip3_perc_round = trip3_percentage.to_i
 
# Calculations for Flights and Accomodation totals
all_flight_total = trip1_ticket.to_f.round(2) + trip2_ticket.to_f.round(2) + trip3_ticket.to_f.round(2)
all_hotel_total = trip1_hotel_cost.to_f.round(2) + trip2_hotel_cost.to_f.round(2) + trip3_hotel_cost.to_f.round(2)
 
#Outputting
puts "______________________________"
puts
puts "For all trips, you have a grand total of $#{sprintf('%.2f', all_exp_total)} in expenses."
puts
puts "For Trip 1 you spent a total of $#{sprintf('%.2f',trip1_total_cost)}, or #{trip1_perc_round}% of your overall expenses"
puts
puts "For Trip 2 you spent a total of $#{sprintf('%.2f',trip2_total_cost)}, or #{trip2_perc_round}% of your overall expenses."
puts
puts "For Trip 3 you spent a total of $#{sprintf('%.2f',trip3_total_cost)}, or #{trip3_perc_round}% of your overall expenses."
puts
puts "You spent about $#{sprintf('%.2f', all_flight_total)} on flights and $#{sprintf('%.2f', all_hotel_total)} on accommodations."
puts
 
# Most Expensive Trip Calculation and Output
if trip1_total_cost > trip2_total_cost && trip1_total_cost > trip3_total_cost
puts "Trip 1 was your most expensive trip, costing $#{sprintf('%.2f', trip1_total_cost)}."
elsif trip2_total_cost > trip1_total_cost && trip2_total_cost > trip3_total_cost
puts "Trip 2 was your most expensive trip, costing $#{sprintf('%.2f', trip2_total_cost)}."
elsif trip3_total_cost > trip1_total_cost && trip3_total_cost > trip2_total_cost
puts "Trip 3 was your most expensive trip, costing $#{sprintf('%.2f', trip3_total_cost)}."
else
"All your trips cost the same."
end

# Instructions

# In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?

# At the end of the first year there will be:
# 1000 + 1000 * 0.02 + 50 => 1070 inhabitants

# At the end of the 2nd year there will be:
# 1070 + 1070 * 0.02 + 50 => 1141 inhabitants (** number of inhabitants is an integer **)

# At the end of the 3rd year there will be:
# 1141 + 1141 * 0.02 + 50 => 1213

# It will need 3 entire years.
# More generally given parameters:

# p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

# the function nb_year should return n number of entire years needed to get a population greater or equal to p.

# aug is an integer, percent a positive or null floating number, p0 and p are positive integers (> 0)

# Examples:
# nb_year(1500, 5, 100, 5000) -> 15
# nb_year(1500000, 2.5, 10000, 2000000) -> 10

# Note:
# Don't forget to convert the percent parameter as a percentage in the body of your function: if the parameter percent is 2 you have to convert it to 0.02.


# My Solution


def nb_year(p0, percent, aug, p)
  years = 0
  population = p0
  while population < p
    population_increased = population + (population * (percent.to_f/100)) + aug
    years += 1
    population = population_increased.floor
  end
  return years
end


# initilised a years counter = 0 and the population = stating population
# created a loop to keep running while the population is less than the target population
# implemented the population increate equation - needed to convert the percentage to a float as some start as integers and will = 0 as a decimal
# increment the years counter by 1 each time the new population is calculated
# make the new population = population
# loop will run again if the population is less than the target population
# when the population >= target population, loop will stop and the years counter will be returned, showing hwo many years passed (number of times the loop ran)

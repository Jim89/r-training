# dplyr challenges --------------------------------------------------------
library(dplyr)

# * Can you select all the columns which contain "color" (without listing them)
select(starwars, contains("color"))

# * Which character is the heaviest?
arrange(starwars, desc(mass))

# * How many Droids are there?
filter(starwars, species == "Droid")

starwars %>% 
  group_by(species) %>% 
  summarise(how_many = n()) %>% 
  filter(species == "Droid")


# * Which planet has the most characters from it?
starwars %>% 
  group_by(homeworld) %>% 
  summarise(characters = n()) %>% 
  arrange(desc(characters))


# * How many of each species is there, and what is the average height of each?
starwars %>% 
  group_by(species) %>% 
  summarise(
    how_many = n(),
    avg_height = mean(height, na.rm = TRUE)
    )

# Can you calculate BMI ($BMI = \frac{mass}{(height / 100)^2}$), what is Darth Vader's?
starwars %>% 
  mutate(bmi = mass / ((height / 100)^2) ) %>% 
  select(name, height, mass, bmi) %>% 
  filter(name == "Darth Vader")

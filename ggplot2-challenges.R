# ggplot2 challenges -------------------------------------------------------
library(ggplot2)

# * the relationship between height and mass? What about for each gender?
ggplot(starwars, aes(height, mass)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(starwars, aes(height, mass, colour = gender)) +
  geom_point() +
  geom_smooth(method = "lm")


# * a histogram or density plot of character heights? Character mass?
# Heights
ggplot(starwars, aes(height)) +
  geom_histogram(binwidth = 10)

ggplot(starwars, aes(height)) +
  geom_density()

# Mass
ggplot(starwars, aes(mass)) +
  geom_histogram(binwidth = 10)

ggplot(starwars, aes(mass)) +
  geom_density()


# a count of each species, or homeworld?
ggplot(starwars, aes(species)) +
  geom_bar() +
  coord_flip()

ggplot(starwars, aes(homeworld)) +
  geom_bar() +
  coord_flip()

# * a summary of character height for each eye colour?
ggplot(starwars, aes(eye_color, height, fill = eye_color)) +
  geom_boxplot()


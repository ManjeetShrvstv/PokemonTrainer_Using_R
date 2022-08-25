# Loading Dataset:
pokemon <- read.csv("C:/Users/manje/Downloads/Learning/Project/pokemon.csv")
View(pokemon)

# Understanding Dataset:
nrow(pokemon)
ncol(pokemon)
sum(is.na(pokemon))

# Glancing Categorical columns:
table(pokemon$Type.1)
table(pokemon$Generation)
table(pokemon$Legendary)


# Understanding other numerical values:
min(pokemon$Sp..Atk)
max(pokemon$Sp..Atk)

min(pokemon$HP)
max(pokemon$HP)

# Renaming Columns:
colnames(pokemon)

## Changing the names of the colmns 'Type.1' & 'Type.2' to 'primary_type' & 'secondary_type'
colnames(pokemon)[colnames(pokemon)=='Type.1'] <- "primary_type"
colnames(pokemon)[colnames(pokemon)=='Type.2'] <- "secondary_type"
View(pokemon)


# Extracting grass type pokemon:
install.packages("dplyr")
library(dplyr)

grass_pokemon <- pokemon %>% filter(primary_type=='Grass')
View(grass_pokemon)

min(grass_pokemon$Speed)
max(grass_pokemon$Speed)

min(grass_pokemon$Sp..Atk)
max(grass_pokemon$Sp..Atk)

mean(grass_pokemon$Sp..Atk)
mean(grass_pokemon$Sp..Def)


# Visualizing stats of grass_pokemon:
install.packages("ggplot2")
library(ggplot2)

## Understand the distribution of 'HP' column:
ggplot(data = pokemon)
ggplot(data = pokemon, aes(x=HP))+ geom_histogram()
ggplot(data = pokemon, aes(x=HP))+ 
  geom_histogram(fill= 'palegreen4', color= 'yellow')


# Extracting Fire_type pokemon:
fire_pokemon <- pokemon %>% filter(primary_type== 'Fire')
View(fire_pokemon)

min(fire_pokemon$Speed)
max(fire_pokemon$Speed)

mean(fire_pokemon$Sp..Atk)
mean(fire_pokemon$Sp..Def)


# Visualizing stats of fire pokemon:
## visualizing different Generation & secondary_type of Fire pokemon:
ggplot(data = fire_pokemon, aes(x=Generation))+ geom_bar()
ggplot(data = fire_pokemon,aes(x= secondary_type))+ geom_bar()

ggplot(data = fire_pokemon, aes(x= Sp..Atk, y= Sp..Def))+ geom_point()



# Extracting Water type pokemon:
water_pokemon <- pokemon %>% filter(primary_type=='Water')
View(water_pokemon)
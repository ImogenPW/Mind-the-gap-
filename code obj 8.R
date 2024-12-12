#Title: exploration of pesticide monitoring data over time
#Author: Imogen Poyntz-Wright
#date: 25/06/24

#Libraries 
install.packages("scales")


library(ggplot2)
library(dplyr)
library(tidyverse)
library(readr)
library(openxlsx)
library(lubridate)
library(ggridges)
library(lme4)
library(sp)
library(rgdal)
library(maps)
library(scales)



#Load data

df_2000 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2000.csv")
df_2001 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2001.csv")
df_2002 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2002.csv")
df_2003 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2003.csv")
df_2004 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2004.csv")
df_2005 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2005.csv")
df_2006 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2006.csv")
df_2007 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2007.csv")
df_2008 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2008.csv")
df_2009 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2009.csv")
df_2010 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2010.csv")
df_2011 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2011.csv")
df_2012 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2012.csv")
df_2013 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2013.csv")
df_2014 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2014.csv")
df_2015 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2015.csv")
df_2016 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2016.csv")
df_2017 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2017.csv")
df_2018 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2018.csv")
df_2019 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2019.csv")
df_2020 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2020.csv")
df_2021 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2021.csv")
df_2022 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2022.csv")
df_2023 <- read.csv("C:/Users/imoge/OneDrive/phd/Thesis documents/Literature review submission/New lit review/RQ/2023.csv")

pesticides <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/list of pesticides.csv")


#Extract only rows with pesticide information and save into new file
head(df_2000a)
df_2000a <- merge(pesticides, df_2000, by = "determinand.definition")
write.xlsx(df_2000a, file = "2000 pesticides.xlsx")
df_2001a <- merge(pesticides, df_2001, by = "determinand.definition")
write.xlsx(df_2001a, file = "2001 pesticides.xlsx")
df_2002a <- merge(pesticides, df_2002, by = "determinand.definition")
write.xlsx(df_2002a, file = "2002 pesticides.xlsx")
df_2003a <- merge(pesticides, df_2003, by = "determinand.definition")
write.xlsx(df_2003a, file = "2003 pesticides.xlsx")
df_2004a <- merge(pesticides, df_2004, by = "determinand.definition")
write.xlsx(df_2004a, file = "2004 pesticides.xlsx")
df_2005a <- merge(pesticides, df_2005, by = "determinand.definition")
write.xlsx(df_2005a, file = "2005 pesticides.xlsx")
df_2006a <- merge(pesticides, df_2006, by = "determinand.definition")
write.xlsx(df_2006a, file = "2006 pesticides.xlsx")
df_2007a <- merge(pesticides, df_2007, by = "determinand.definition")
write.xlsx(df_2007a, file = "2007 pesticides.xlsx")
df_2008a <- merge(pesticides, df_2008, by = "determinand.definition")
write.xlsx(df_2008a, file = "2008 pesticides.xlsx")
df_2009a <- merge(pesticides, df_2009, by = "determinand.definition")
write.xlsx(df_2009a, file = "2009 pesticides.xlsx")
df_2010a <- merge(pesticides, df_2010, by = "determinand.definition")
write.xlsx(df_2010a, file = "2010 pesticides.xlsx")
df_2011a <- merge(pesticides, df_2011, by = "determinand.definition")
write.xlsx(df_2011a, file = "2011 pesticides.xlsx")
df_2012a <- merge(pesticides, df_2012, by = "determinand.definition")
write.xlsx(df_2012a, file = "2012 pesticides.xlsx")
df_2013a <- merge(pesticides, df_2013, by = "determinand.definition")
write.xlsx(df_2013a, file = "2013 pesticides.xlsx")
df_2014a <- merge(pesticides, df_2014, by = "determinand.definition")
write.xlsx(df_2014a, file = "2014 pesticides.xlsx")
df_2015a <- merge(pesticides, df_2015, by = "determinand.definition")
write.xlsx(df_2015a, file = "2015 pesticides.xlsx")
df_2016a <- merge(pesticides, df_2016, by = "determinand.definition")
write.xlsx(df_2016a, file = "2016 pesticides.xlsx")
df_2017a <- merge(pesticides, df_2017, by = "determinand.definition")
write.xlsx(df_2017a, file = "2017 pesticides.xlsx")
df_2018a <- merge(pesticides, df_2018, by = "determinand.definition")
write.xlsx(df_2018a, file = "2018 pesticides.xlsx")
df_2019a <- merge(pesticides, df_2019, by = "determinand.definition")
write.xlsx(df_2019a, file = "2019 pesticides.xlsx")
df_2020a <- merge(pesticides, df_2020, by = "determinand.definition")
write.xlsx(df_2020a, file = "2020 pesticides.xlsx")
df_2021a <- merge(pesticides, df_2021, by = "determinand.definition")
write.xlsx(df_2021a, file = "2021 pesticides.xlsx")
df_2022a <- merge(pesticides, df_2022, by = "determinand.definition")
write.xlsx(df_2022a, file = "2022 pesticides.xlsx")
df_2023a <- merge(pesticides, df_2023, by = "determinand.definition")
write.xlsx(df_2023a, file = "2023 pesticides.xlsx")



#merge dataframes

a <- rbind(df_2000a, df_2001a)
b <- rbind(a, df_2002a)
c <- rbind(b, df_2003a)
d <- rbind(c, df_2004a)
e <- rbind(d, df_2005a)
f <- rbind(e, df_2006a)
g <- rbind(f, df_2007a)
h <- rbind(g, df_2008a)
i <- rbind(h, df_2009a)
j <- rbind(i, df_2010a)
k <- rbind(j, df_2011a)
l <- rbind(k, df_2012a)
m <- rbind(l, df_2013a)
n <- rbind(m, df_2014a)
o <- rbind(n, df_2015a)
p <- rbind(o, df_2016a)
q <- rbind(p, df_2017a)
r <- rbind(q, df_2018a)
s <- rbind(r, df_2019a)
t <- rbind(s, df_2020a)
u <- rbind(t, df_2021a)
v <- rbind(u, df_2022a)
all_data <- rbind(v, df_2023a)
head(all_data)

all_data$sample.sampleDateTime<- ymd_hms(all_data$sample.sampleDateTime)
all_data$year <- year(all_data$sample.sampleDateTime)


#extract only region and rename regions

all_data$sample.samplingPoint.notation<- sapply(strsplit(as.character(all_data$sample.samplingPoint.notation), '-'), '[', 1)
unique(all_data$sample.samplingPoint.notation)
new_function <- function(x) {
  if (x == "AN") {
    return ("Anglian")} 
   else if(x == "MD") {
    return ("Midlands")}
   else if (x == "SW") {
    return = ("Southwest")}
   else if (x == "SO") {
    return ("Southeast")}
   else if(x == "TH"){
    return ("Thames")}
   else if (x == "NE") {
    return ("Northeast")}
   else if (x == "NW") {
    return ("Northwest")
  }
}

all_data$sample.samplingPoint.notation <- sapply(all_data$sample.samplingPoint.notation, new_function)
write.xlsx(all_data, file = "all pesticide data_step_1.xlsx") #some chemicals not pesticides still need to be removed
head(pesticides)
DF2 <- merge(pesticides, all_data, by = "determinand.definition", all.x = TRUE)

DF2$group <- cut(1:nrow(DF2), breaks = 5, labels = FALSE)

# Split the dataframe into a list of dataframes
df_list <- split(DF2, DF2$group)

# Remove the grouping variable from each dataframe
df_list <- lapply(df_list, function(x) x %>% select(-group))

# Save each part separately
for (i in 1:5) {
  write.csv(df_list[[i]], paste0("df_part_", i, ".csv"), row.names = FALSE)
}



df1 <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/df_part_1.csv")
df2 <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/df_part_2.csv")
df3 <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/df_part_3.csv")
df4 <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/df_part_4.csv")
df5 <- read.csv("C:/Users/imoge/OneDrive/phd/Research/Objective 8/df_part_5.csv")

mg1 <- rbind(df1, df2)
mg2 <- rbind(mg1, df3)
mg3 <- rbind(mg2, df4)
mg4 <- rbind(mg3, df5)
DF2 <- mg4
DF_water <- DF2 %>% filter(!(determinand.unit.label %in% c("ug", "ug/kg")))

#Count the number of samples per pesticide
Total_no_samples <- DF_water %>% group_by(determinand.definition) %>% summarise(total = n())
#write.xlsx(Total_no_samples, file = "Total no of pesticide samples.xlsx")


#SECTION 1 - MAKE DATASET FOR NUMBER OF SAMPLES COLLECTED PER SITE OVER THE 24 YEARS

counts_df <- DF_water %>%
  group_by(sample.samplingPoint, sample.samplingPoint.easting, sample.samplingPoint.northing) %>%
  summarise(counts = n_distinct(sample.sampleDateTime)) 


###convert northing and easting to long/lat
coordinates(counts_df) <- c("sample.samplingPoint.easting", "sample.samplingPoint.northing")
proj4string(counts_df) <- CRS("+init=epsg:27700")
# Transform to WGS 84 (Longitude and Latitude)
ngr_wgs84 <- spTransform(counts_df, CRS("+init=epsg:4326"))
# Extract Longitude and Latitude
counts_df$Longitude <- coordinates(ngr_wgs84)[,1]
counts_df$Latitude <- coordinates(ngr_wgs84)[,2]
# View the resulting data frame with long/lat
head(counts_df)

summary(counts_df$counts)

new_function <- function (x) {
  if (x >= 1 & x <= 50) {
    return("1 to 50")}
  else if (x >=51 & x <=100) {
    return("51 to 100")
  }
  else if (x >=101 & x <=200) {
    return("101 to 200")
  }
  else if (x>=201 & x <=300) {
    return("201 to 300")
  }
  else if (x>=301 & x <=700) {
    return("301 to 700")
  }
  else if (x>=801 & x <=1200) {
    return("801 to 1200")
  }
  
}


counts_df$grouped_counts <- sapply(counts_df$counts, new_function)
head(counts_df)
write.xlsx(counts_df, file = "Pesticide dataset with sample counts per site 2000 to 2023.xlsx")

unique(counts_df$grouped_counts)

frequency <- table(counts_df$grouped_counts)




#SECTION 2: Concentration of pesticides most hazardous to inverts over time per region; Lowest obs effect conc exceeded
insecticides <- filter(DF_water, insecticide == 'yes')
herbicides <- filter(DF_water, Herbicide == 'yes')

insecticides2 <-insecticides %>%
  filter(determinand.unit.label == "ng/l") %>%
  mutate(result = result/1000, determinand.unit.label = "ug/l") 
insecticides1<- insecticides %>%
  filter(determinand.unit.label != "ng/l")
insecticides_corrected <- rbind(insecticides1, insecticides2)

DF_water1 <-DF_water %>%
  filter(determinand.unit.label == "mg/l") %>%
  mutate(result = result*1000, determinand.unit.label = "ug/l") 
DF_water2 <-DF_water %>%
  filter(determinand.unit.label == "ng/l") %>%
  mutate(result = result/1000, determinand.unit.label = "ug/l") 

DF_water3 <- DF_water %>%
  filter(determinand.unit.label != "mg/l")
DF_water4 <- DF_water3 %>%
  filter(determinand.unit.label != "ng/l")

Total_pest_corr <- rbind(DF_water4, DF_water1)
Total_pest_corr2 <- rbind(Total_pest_corr, DF_water2)

Chlorpyrifos <- insecticides_corrected %>% filter(determinand.definition == "Chlorpyrifos-ethyl")
Cypermethrin <-  insecticides_corrected %>% filter(determinand.definition == "Cypermethrin")
Deltamethrin <- insecticides_corrected %>% filter(determinand.definition == "Deltamethrin")
Diazinon <- insecticides_corrected %>% filter(determinand.definition == "Diazinon")
Fenitrothion <- insecticides_corrected %>% filter(determinand.definition == "Fenitrothion")
#Fenvalerate <- insecticides_corrected %>% filter(determinand.definition == "")
#Fipronil <- insecticides_corrected %>% filter(determinand.definition == "")
#Imidacloprid <- insecticides_corrected %>% filter(determinand.definition == "")
Lindane <- insecticides_corrected %>% filter(determinand.definition == "HCH -gamma :- {Lindane}")
Malathion <- insecticides_corrected %>% filter(determinand.definition == "Malathion")
Parathion <- insecticides_corrected %>% filter(determinand.definition == "Parathion-ethyl :- {Parathion}")
Tributyltin <- Total_pest_corr2%>% filter(determinand.definition %in% c("Tributyl Tin as Cation", "Tributyl Tin as Sn"))
head(Tributyltin)

#count the number of samples and sites which have exceeded 
total_chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.02, na.rm = TRUE))
repr_Chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.021 , na.rm = TRUE))
growth_Chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 3, na.rm = TRUE))
dev_Chlorpyrifos <- Chlorpyrifos %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.0075, na.rm = TRUE))


total_Cypermethrin <- Cypermethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Cypermethrin <- Cypermethrin %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Cypermethrin <- Cypermethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.002, na.rm = TRUE))
repr_Cypermethrin <- Cypermethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.000002 , na.rm = TRUE))
growth_Cypermethrin <- Cypermethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 950, na.rm = TRUE))

total_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.000006, na.rm = TRUE))
repr_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.0054 , na.rm = TRUE))
growth_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.005, na.rm = TRUE))
dev_deltamethrin <- Deltamethrin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.02, na.rm = TRUE))

total_Diazinon<- Diazinon %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Diazinon <- Diazinon %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Diazinon <- Diazinon %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.00035, na.rm = TRUE))
repr_Diazinon<- Diazinon %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.0002 , na.rm = TRUE))
growth_Diazinon <- Diazinon %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.53, na.rm = TRUE))

total_Fenitrothion <- Fenitrothion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Fenitrothion <- Fenitrothion %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
growth_Fenitrothion <- Fenitrothion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.011, na.rm = TRUE))
repr_Fenitrothion<- Fenitrothion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.011 , na.rm = TRUE))

total_Parathion <- Parathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Parathion <- Parathion %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Parathion <- Parathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.00031, na.rm = TRUE))

total_Tributyltin <- Tributyltin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Tributyltin <- Tributyltin %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Tributyltin <- Tributyltin %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 72, na.rm = TRUE))

total_Lindane <- Lindane %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Lindane <- Lindane %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Lindane <- Lindane %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.8, na.rm = TRUE))
repr_Lindane <- Lindane %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 10.5 , na.rm = TRUE))
growth_Lindane <- Lindane %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 6.11 , na.rm = TRUE))

total_Malathion <- Malathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = n())
mean_Malathion <- Malathion %>% group_by(sample.samplingPoint.notation) %>% summarise(mean = mean(result))
mortal_Malathion <- Malathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum( result >= 0.25, na.rm = TRUE))
repr_Malathion<- Malathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.1 , na.rm = TRUE))
growth_Malathion <- Malathion %>% group_by(sample.samplingPoint.notation) %>% 
  summarise(count = sum(result >= 0.1 , na.rm = TRUE))

new_function2 <- function(df) {
  df %>%
    group_by(sample.samplingPoint.notation, determinand.definition, year) %>%
    summarise(
      mean_result = mean(result),
      max_result = max(result),
      min_result = min(result)
    )
}

# Apply the function to the chemical DataFrame
Tributyltin2 <- new_function2(Tributyltin)
Parathion2 <- new_function2(Parathion)
Malathion2 <- new_function2(Malathion)
Lindane2 <- new_function2(Lindane)
Fenitrothion2 <- new_function2(Fenitrothion)
Diazinon2 <- new_function2(Diazinon)
Deltamethrin2 <- new_function2(Deltamethrin)
Cypermethrin2 <- new_function2(Cypermethrin)
Chlorpyrifos2 <- new_function2(Chlorpyrifos)

merge1 <- rbind(Tributyltin2, Parathion2)
merge2 <- rbind(merge1, Malathion2)
merge3 <- rbind(merge2, Lindane2)
merge4 <- rbind(merge3, Fenitrothion2)
merge5 <- rbind(merge4, Diazinon2)
merge6 <- rbind(merge5, Deltamethrin2)
merge7 <- rbind(merge6, Cypermethrin2)
merge8 <- rbind(merge7, Chlorpyrifos2)
merge8$determinand.definition[merge8$determinand.definition == 'Tributyl Tin as Cation' ] <- 'Tributyltin'
merge8$determinand.definition[merge8$determinand.definition == 'Tributyl Tin as Sn' ] <- 'Tributyltin'
merge8$determinand.definition[merge8$determinand.definition == 'Parathion-ethyl :- {Parathion}' ] <- 'Parathion'
merge8$determinand.definition[merge8$determinand.definition == 'HCH -gamma :- {Lindane}' ] <- 'Lindane'





#makeplots
mycolor = c("#12436D","#28A197","#801650","#F46A25","#A285D1", "#3D3D3D", "#D4A017") #set colours


All <- ggplot(data = merge8, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) + facet_wrap(~determinand.definition,  scales = "free") +
  geom_point(size = 3) +  # Mean points
  #geom_line(aes(group = sample.samplingPoint.notation), linetype="dotted", size = 1 ) +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_blank(),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),
        strip.text = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

#ggsave(All, file = "All pesticide concs per region__nolines_final.tiff", height = 10, width = 24)

Tributyltin <- ggplot(data = Tributyltin2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Tributyltin", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Tributyltin, file = "Tributyltin concs per region.tiff", height = 5, width = 10)



Parathion <- ggplot(data = Parathion2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Parathion", color = "Region") +
  scale_color_manual(values = mycolor) +
 # geom_hline(yintercept =  0.00034, color = "red", linetype = "dashed") +
  geom_hline(yintercept = 0.00034, color = "red", linetype = "dashed") +   # Upper bound line
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10(labels = scientific_format())

ggsave(Parathion, file = "Parathion concs per region.tiff", height = 5, width = 10)


Malathion <- ggplot(data = Malathion2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Malathion", color = "Region") +
  scale_color_manual(values = mycolor) +
  geom_hline(yintercept =  0.1, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Malathion, file = "Malathion concs per region.tiff", height = 5, width = 10)



Lindane <- ggplot(data = Lindane2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  annotate("rect", xmin = -Inf, xmax = Inf, ymin = 0.8, ymax = 10.5, 
           fill = "lightcoral", alpha = 0.2) +
  geom_line(size = 1) +  # Line for the data
  geom_hline(yintercept = 0.8, color = "red", linetype = "dashed") +  # Lower bound line
  geom_hline(yintercept = 10.5, color = "red", linetype = "dashed") +   # Upper bound line
   geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Lindane", color = "Region") +
  scale_color_manual(values = mycolor) +
  #geom_hline(yintercept =  0.8, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10(labels = scientific_format())

ggsave(Lindane, file = "Lindane concs per region.tiff", height = 5, width = 10)


Fenitrothion <- ggplot(data = Fenitrothion2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Fenitrothion", color = "Region") +
  scale_color_manual(values = mycolor) +
  geom_hline(yintercept =  0.011, color = "red", linetype = "dashed") +
 theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Fenitrothion, file = "Fenitrothion concs per region.tiff", height = 5, width = 10)



Tributyltin <- ggplot(data = Tributyltin2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Tributyltin", color = "Region") +
  scale_color_manual(values = mycolor) +
  geom_hline(yintercept =  72, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Tributyltin, file = "Tributyltin concs per region.tiff", height = 5, width = 10)


Diazinon <- ggplot(data = Diazinon2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  annotate("rect", xmin = -Inf, xmax = Inf, ymin = 0.0004, ymax = 0.53, 
           fill = "lightcoral", alpha = 0.2) + 
  geom_line(size = 1) +  # Line for the data
  geom_hline(yintercept = 0.0004, color = "red", linetype = "dashed") +  # Lower bound line
  geom_hline(yintercept = 0.53, color = "red", linetype = "dashed") +   # Upper bound line
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Diazinon", color = "Region") +
  scale_color_manual(values = mycolor) +
  #geom_hline(yintercept =  0.0004, color = "red", linetype = "dashed") +
 
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Diazinon, file = "Diazinon concs per region.tiff", height = 5, width = 10)


Deltamethrin <- ggplot(data = Deltamethrin2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  annotate("rect", xmin = -Inf, xmax = Inf, ymin = 0.000006, ymax = 0.02, 
           fill = "lightcoral", alpha = 0.2) + 
  geom_line(size = 1) +  # Line for the data
  geom_hline(yintercept = 0.000006, color = "red", linetype = "dashed") +  # Lower bound line
  geom_hline(yintercept =  0.02, color = "red", linetype = "dashed") +   # Upper bound line
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Deltamethrin", color = "Region") +
  scale_color_manual(values = mycolor) +
  #geom_hline(yintercept =  0.000006, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10(labels = scientific_format())

ggsave(Deltamethrin, file = "Deltamethrin concs per region.tiff", height = 5, width = 10)



Cypermethrin <- ggplot(data = Cypermethrin2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  annotate("rect", xmin = -Inf, xmax = Inf, ymin = 0.000002, ymax = 950, 
           fill = "lightcoral", alpha = 0.2) +
  geom_line(size = 1) +  # Line for the data
  geom_hline(yintercept = 0.000002, color = "red", linetype = "dashed") +  # Lower bound line
  geom_hline(yintercept =  950, color = "red", linetype = "dashed") +   # Upper bound line
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype= "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Cypermethrin", color = "Region") +
  scale_color_manual(values = mycolor) +
  #geom_hline(yintercept =  0.000002, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Cypermethrin, file = "Cypermethrin concs per region.tiff", height = 5, width = 10)



Chlorpyrifos <- ggplot(data = Chlorpyrifos2, aes(x = as.factor(year), y = mean_result, color = sample.samplingPoint.notation)) +
  annotate("rect", xmin = -Inf, xmax = Inf, ymin = 0.0075, ymax = 3, 
           fill = "lightcoral", alpha = 0.2) +
  geom_line(size = 1) +  # Line for the data
  geom_hline(yintercept = 0.0075, color = "red", linetype = "dashed") +  # Lower bound line
  geom_hline(yintercept =  3, color = "red", linetype = "dashed") +   # Upper bound line
  geom_point(size = 3) +  # Mean points
  geom_line(aes(group = sample.samplingPoint.notation), size = 1, linetype = "dashed") +  # Line connecting points by sample.samplingPoint.notation
  #geom_point(aes(y = max_result), shape = 18, size = 3) +  # Max points
  #geom_point(aes(y = min_result), shape = 17, size = 3) +  # Min points
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Chlorpyrifos", color = "Region") +
  scale_color_manual(values = mycolor) +
  #geom_hline(yintercept =  0.0075, color = "red", linetype = "dashed") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10()

ggsave(Chlorpyrifos, file = "Chlorpyrifos concs per region.tiff", height = 5, width = 10)








###Making plots to show the distribution of data per year/region/pesticide

mycolor = c("#12436D","#28A197","#801650","#F46A25","#A285D1", "#3D3D3D", "#D4A017") #set colours

head(Tributyltin)
Tributyltin_violin <- ggplot(data = Tributyltin, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Tributyltin") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Tributyltin_violin, file = "Tributyltin concs per region.tiff", height = 10, width = 12)



Parathion_violin <- ggplot(data = Parathion, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Parathion") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5) + # Add jittered points to show outliers
  scale_y_log10(labels = scientific) 

ggsave(Parathion_violin, file = "Parathion concs per region.tiff", height = 10, width = 12)




Malathion_violin <- ggplot(data = Malathion, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Malathion") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Malathion_violin, file = "Malathion concs per region.tiff", height = 10, width = 12)



 
Lindane_violin <- ggplot(data = Lindane, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Lindane") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Lindane_violin, file = "Lindane concs per region.tiff", height = 10, width = 12)


Fenitrothion_violin <- ggplot(data = Fenitrothion, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Fenitrothion") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Fenitrothion_violin, file = "Fenitrothion concs per region.tiff", height = 10, width = 12)



Diazinon_violin <- ggplot(data = Diazinon, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Diazinon") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Diazinon_violin, file = "Diazinon concs per region.tiff", height = 10, width = 12)



Deltamethrin_violin <- ggplot(data = Deltamethrin, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Deltamethrin") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5) + # Add jittered points to show outliers
scale_y_log10(labels = scientific) 

ggsave(Deltamethrin_violin, file = "Deltamethrin concs per region.tiff", height = 10, width = 12)


Cypermethrin_violin <- ggplot(data = Cypermethrin, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Cypermethrin") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Cypermethrin_violin, file = "Cypermethrin concs per region.tiff", height = 10, width = 12)


Chlorpyrifos_violin <- ggplot(data = Chlorpyrifos, aes(x = as.factor(year), y = result)) +
  geom_point() +  facet_wrap(.~sample.samplingPoint.notation, ncol = 2, nrow=4) +
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Chlorpyrifos") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14),
        legend.title = element_text(size = 20),   # Adjust legend text size
        strip.text = element_text(size = 20)) + 
  scale_y_log10() +
  geom_jitter(width = 0.1, size = 2, alpha = 0.5)  # Add jittered points to show outliers

ggsave(Chlorpyrifos_violin, file = "Chlorpyrifos concs per region.tiff", height = 10, width = 12)



















#############################################################################################
head(DF_water)
colnames(DF_water)

unique(DF_water$determinand.unit.label)

#PART 1: Find how many indivdual pesticide samples collected every year - then do it by category e.g. insecticides, herbicides
insecticides <- filter(DF_water, insecticide == 'yes')
herbicides <- filter(DF_water, Herbicide == 'yes')

unique(insecticides$determinand.unit.label)

samples_per_year <- DF_water %>%
  group_by(year) %>%
  summarize(count =  n())

samples_per_year_reg <- DF_water %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n())

samples_per_year_ins <- insecticides %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n())

samples_per_year_hrb <- herbicides %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n())

mycolor = c("#12436D","#28A197","#801650","#F46A25","#A285D1", "#3D3D3D", "#D4A017") #set colours

all_samp <- ggplot(samples_per_year, aes(x = year, y = count)) + 
  geom_bar(stat = "identity", position = "dodge") + 
  scale_fill_manual(values =mycolor) +
  labs(x = "Year", y = "Number of Samples") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5))
ggsave(all_samp, file = "Number of sample per year.tiff")

all_samp_reg <- ggplot(samples_per_year_reg, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + 
  scale_fill_manual(values =mycolor) +
  geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples", fill = "Region") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5))
ggsave(all_samp_reg, file = "Number of sample per year per region.tiff")


all_samp_ins <- ggplot(samples_per_year_ins, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_ins, file = "Number of samples for insecticide per year.tiff")


all_samp_hrb <- ggplot(samples_per_year_hrb, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_hrb, file = "Number of samples for herbicides per year.tiff")



#PART 1b: Number of whole samples collected per region/year


samples_per_year_whole <- DF_water %>%
  group_by(year) %>%
  summarize(count =  n_distinct(sample.sampleDateTime))

samples_per_year_reg_whole <- DF_water %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n_distinct(sample.sampleDateTime))

samples_per_year_ins_whole <- insecticides %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n_distinct(sample.sampleDateTime))

samples_per_year_hrb_whole <- herbicides %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarize(count =  n_distinct(sample.sampleDateTime))

mycolor = c("#12436D","#28A197","#801650","#F46A25","#A285D1", "#3D3D3D", "#D4A017") #set colours

all_samp <- ggplot(samples_per_year_whole, aes(x = year, y = count)) + 
  geom_bar(stat = "identity", position = "dodge") + 
  scale_fill_manual(values =mycolor) +
  labs(x = "Year", y = "Number of Samples") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5))
ggsave(all_samp, file = "Number of whole sample per year.tiff")

all_samp_reg <- ggplot(samples_per_year_reg_whole, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + 
  scale_fill_manual(values =mycolor) +
  geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples", fill = "Region") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5))
ggsave(all_samp_reg, file = "Number of whole sample per year per region.tiff")


all_samp_ins <- ggplot(samples_per_year_ins_whole, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_ins, file = "Number of whole samples for insecticide per year.tiff")


all_samp_hrb <- ggplot(samples_per_year_hrb_whole, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Samples") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_hrb, file = "Number of whole samples for herbicides per year.tiff")



#PART 2:find how many riverine site have been sampled per year and categorise by region
head(DF_water)
sample_rivers<- DF_water %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(count = n_distinct(sample.samplingPoint.label))

all_rivers <- ggplot(sample_rivers, aes(x = year, y = count, fill = sample.samplingPoint.notation)) + 
  geom_bar(stat = "identity", position = "stack") +
  scale_fill_manual(values = mycolor) +
  labs(x = "Year", y = "Number of Riverine Sites", fill = "Region") +
  theme_classic() +
  theme(axis.text.x = element_text(vjust = 0.5, hjust = 0.5))
ggsave(all_rivers, file = "Number of rivers sampled per region per year.png")

#PART 3:per site count the number of total samples taken every 5, 10, 15 etc years and in total - make a map to show where high sample number are 
#and where there are low sample numbers
#do this also seperately for insecticides/herbicides etc


#SECTION
#PART 4:look at concentrations of pesticides over time across all rivers (then across rivers in each region) for each pesticide

head(insecticides)
unique(Total_pest_corr2$determinand.unit.label)

insecticides2 <-insecticides %>%
  filter(determinand.unit.label == "ng/l") %>%
  mutate(result = result/1000, determinand.unit.label = "ug/l") 

insecticides1<- insecticides %>%
  filter(determinand.unit.label != "ng/l")
insecticides_corrected <- rbind(insecticides1, insecticides2)

herbicides2 <-herbicides %>%
  filter(determinand.unit.label == "mg/l") %>%
  mutate(result = result*1000, determinand.unit.label = "ug/l") 
herbicides1 <- herbicides %>%
  filter(determinand.unit.label != "mg/l")
herbicides_corrected <- rbind(herbicides1, herbicides2)


DF_water1 <-DF_water %>%
  filter(determinand.unit.label == "mg/l") %>%
  mutate(result = result*1000, determinand.unit.label = "ug/l") 
DF_water2 <-DF_water %>%
  filter(determinand.unit.label == "ng/l") %>%
  mutate(result = result/1000, determinand.unit.label = "ug/l") 

DF_water3 <- DF_water %>%
  filter(determinand.unit.label != "mg/l")
DF_water4 <- DF_water3 %>%
  filter(determinand.unit.label != "ng/l")

Total_pest_corr <- rbind(DF_water4, DF_water1)
Total_pest_corr2 <- rbind(Total_pest_corr, DF_water2)

write.xlsx(Total_pest_corr2, file = "pesticide concentrations in England 2000 to 2023.xlsx")

#INSECTICIDE
head(insecticides_corrected)
insecticides_an <- filter(insecticides_corrected, sample.samplingPoint.notation == "Anglian")
insecticides_se<- filter(insecticides_corrected, sample.samplingPoint.notation == "Southeast")
insecticides_sw<- filter(insecticides_corrected, sample.samplingPoint.notation == "Southwest")
insecticides_th<- filter(insecticides_corrected, sample.samplingPoint.notation == "Thames")
insecticides_ne<- filter(insecticides_corrected, sample.samplingPoint.notation == "Northeast")
insecticides_nw<- filter(insecticides_corrected, sample.samplingPoint.notation == "Northwest")
insecticides_m<- filter(insecticides_corrected, sample.samplingPoint.notation == "Midlands")

library(cowplot)
#making a function and loop
# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}

# Function to create individual plots
plot_chemical <- function(chemical_name, mycolor, legend = TRUE) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- insecticides_corrected %>% filter(determinand.definition == chemical_name)
  
  p <- ggplot(DF2_filtered, aes(x = as.factor(year), y = result, fill = sample.samplingPoint.notation, color = sample.samplingPoint.notation)) +
    geom_boxplot(alpha = 0.3) +
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    theme_classic() +
    scale_fill_manual(values = mycolor) +
    scale_color_manual(values = mycolor) +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 20),
          axis.text.y = element_text(size = 25),
          axis.title = element_text(size = 25), 
          plot.title = element_text(size = 25),
          legend.text = element_text(size = 12),  # Adjust legend text size
          legend.title = element_text(size = 14)) +  # Adjust legend title size) +
    scale_y_log10()
  
  if (!legend) {
    p <- p + theme(legend.position = "none")
  } else {
    p <- p + guides(fill = guide_legend(title = "Region", ncol = 7))  # Set legend title and horizontal layout
  }
  
  
  return(p)
}

#apply to each chemical
chemicals <- unique(insecticides_corrected$determinand.definition)
densityplots<- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = TRUE))
legend <- get_legend(plots_with_legend[[1]])
plots <- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = FALSE))

chunk_size <- 2
plot_chunks <- split(plots, ceiling(seq_along(plots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 1, align = 'v')
  
  final_plot <- plot_grid(legend, combined_plot, ncol = 1, rel_heights = c(0.1, 1))
  
  # Save the combined plot
  ggsave(filename = paste0("combined_insecticides_boxplots_part_", i, ".png"), plot = final_plot, width = 10, height = 15)
}

#retrieve legend
DF2_filtered <- insecticides_corrected  %>% filter(determinand.definition == "DDT : Sum of components" )
p <- ggplot(DF2_filtered, aes(x = as.factor(year), y =result, fill = sample.samplingPoint.notation, color = sample.samplingPoint.notation)) + geom_boxplot(alpha = 0.3) +
  labs(x = "Year", y = "Concentration (µg/l) ", title = paste("Concentration of DDT")) + theme_classic() +
  scale_fill_manual(values = mycolor) +
  scale_color_manual(values = mycolor) +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90)) + theme(axis.text.y = element_text(size = 25), axis.text.x = element_text(size = 16), axis.title = element_text(size = 25))
scale_y_log10()
ggsave(file = ("insecticides_plot_DDT.png"), plot = p, width = 8, height = 6)





#PLOT 2

# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}

plot_chemical_density <- function(chemical_name, mycolor) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- insecticides_corrected %>% filter(determinand.definition == chemical_name)
  
  # Calculate summary statistics
  summary_stats <- DF2_filtered %>%
    group_by(year, sample.samplingPoint.notation) %>%
    summarise(mean_value = mean(result),
              max_value = max(result),
              min_value = min(result),
              .groups = 'drop')  # Ensure to drop group information
  
  # Create the plot
  p <- ggplot() +
    geom_point(data = summary_stats, aes(x = as.factor(year), y = mean_value, color = sample.samplingPoint.notation), size = 3) +  # Mean points
    #geom_segment(data = summary_stats, aes(x = as.factor(year), xend = as.factor(year), y = min_value, yend = mean_value, color = sample.samplingPoint.notation), size = 1, linetype = 'dashed') +  # Min lines
    #geom_segment(data = summary_stats, aes(x = as.factor(year), xend = as.factor(year), y = max_value, yend = mean_value, color = sample.samplingPoint.notation), size = 1) +  # Max lines
    geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    scale_color_manual(values = mycolor) +
    theme_minimal() +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
          axis.text.y = element_text(size = 18),
          axis.title = element_text(size = 20),
          plot.title = element_text(size = 20)) +
    theme(legend.position = "none") +
    scale_y_log10()
  
  return(p)
}

# Apply the function to each unique chemical
unique_chemicals <- unique(insecticides_corrected$determinand.definition)
densityplots <- lapply(unique_chemicals, function(chem) plot_chemical_density(chem, mycolor))

# Combine plots into chunks of 15 per row
chunk_size <- 10
plot_chunks <- split(densityplots, ceiling(seq_along(densityplots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 2, align = 'v')
  
  # Save the combined plot
  ggsave(filename = paste0("SUMMARY_combined_insecticides_density_plots_part_", i, ".png"), plot = combined_plot, width = 20, height = 30)
}


##herbicides
#INSECTICIDE
herbicides_an <- filter(herbicides_corrected, sample.samplingPoint.notation == "Anglian")
herbicides_se<- filter(herbicides_corrected, sample.samplingPoint.notation == "Southeast")
herbicides_sw<- filter(herbicides_corrected, sample.samplingPoint.notation == "Southwest")
herbicides_th<- filter(herbicides_corrected, sample.samplingPoint.notation == "Thames")
herbicides_ne<- filter(herbicides_corrected, sample.samplingPoint.notation == "Northeast")
herbicides_nw<- filter(herbicides_corrected, sample.samplingPoint.notation == "Northwest")
herbicides_m<- filter(herbicides_corrected, sample.samplingPoint.notation == "Midlands")

library(cowplot)
#making a function and loop
# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}

# Function to create individual plots
plot_chemical <- function(chemical_name, mycolor, legend = TRUE) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- herbicides_corrected %>% filter(determinand.definition == chemical_name)
  
  p <- ggplot(DF2_filtered, aes(x = as.factor(year), y = result, fill = sample.samplingPoint.notation, color = sample.samplingPoint.notation)) +
    geom_boxplot(alpha = 0.3) +
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    theme_classic() +
    scale_fill_manual(values = mycolor) +
    scale_color_manual(values = mycolor) +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 20),
          axis.text.y = element_text(size = 25),
          axis.title = element_text(size = 25), 
          plot.title = element_text(size = 25),
          legend.text = element_text(size = 12),  # Adjust legend text size
          legend.title = element_text(size = 14)) +  # Adjust legend title size) +
    scale_y_log10()
  
  if (!legend) {
    p <- p + theme(legend.position = "none")
  } else {
    p <- p + guides(fill = guide_legend(title = "Region", ncol = 7))  # Set legend title and horizontal layout
  }
  
  
  return(p)
}

#apply to each chemical
chemicals <- unique(insecticides_corrected$determinand.definition)
densityplots<- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = TRUE))
legend <- get_legend(plots_with_legend[[1]])
plots <- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = FALSE))

chunk_size <- 2
plot_chunks <- split(plots, ceiling(seq_along(plots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 1, align = 'v')
  
  final_plot <- plot_grid(legend, combined_plot, ncol = 1, rel_heights = c(0.1, 1))
  
  # Save the combined plot
  ggsave(filename = paste0("combined_herbicides_boxplots_part_", i, ".png"), plot = final_plot, width = 10, height = 15)
}






#PLOT 2

# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}

plot_chemical_density <- function(chemical_name, mycolor) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- herbicides_corrected %>% filter(determinand.definition == chemical_name)
  
  # Calculate summary statistics
  summary_stats <- DF2_filtered %>%
    group_by(year, sample.samplingPoint.notation) %>%
    summarise(mean_value = mean(result),
              max_value = max(result),
              min_value = min(result),
              .groups = 'drop')  # Ensure to drop group information
  
  # Create the plot
  p <- ggplot(data = summary_stats, aes(x = as.factor(year), y = mean_value, color = sample.samplingPoint.notation)) +
    geom_point(size = 3) +  # Mean points
    geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    scale_color_manual(values = mycolor) +
    theme_minimal() +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
          axis.text.y = element_text(size = 18),
          axis.title = element_text(size = 20),
          plot.title = element_text(size = 20)) +
    theme(legend.position = "none") +
    scale_y_log10()
  
  return(p)
}


# Apply the function to each unique chemical
unique_chemicals <- unique(herbicides_corrected$determinand.definition)
densityplots <- lapply(unique_chemicals, function(chem) plot_chemical_density(chem, mycolor))

# Combine plots into chunks of 15 per row
chunk_size <- 10
plot_chunks <- split(densityplots, ceiling(seq_along(densityplots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 2, align = 'v')
  
  # Save the combined plot
  ggsave(filename = paste0("SUMMARY_combined_herbicide_density_plots_part_", i, ".png"), plot = combined_plot, width = 20, height = 30)
}



#Pesticide

library(cowplot)
#making a function and loop
# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}

# Function to create individual plots
plot_chemical <- function(chemical_name, mycolor, legend = TRUE) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- Total_pest_corr2 %>% filter(determinand.definition == chemical_name)
  
  p <- ggplot(DF2_filtered, aes(x = as.factor(year), y = result, fill = sample.samplingPoint.notation, color = sample.samplingPoint.notation)) +
    geom_boxplot(alpha = 0.3) +
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    theme_classic() +
    scale_fill_manual(values = mycolor) +
    scale_color_manual(values = mycolor) +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 20),
          axis.text.y = element_text(size = 25),
          axis.title = element_text(size = 25), 
          plot.title = element_text(size = 25),
          legend.text = element_text(size = 12),  # Adjust legend text size
          legend.title = element_text(size = 14)) +  # Adjust legend title size) +
    scale_y_log10()
  
  if (!legend) {
    p <- p + theme(legend.position = "none")
  } else {
    p <- p + guides(fill = guide_legend(title = "Region", ncol = 7))  # Set legend title and horizontal layout
  }
  
  
  return(p)
}

#apply to each chemical
chemicals <- unique(Total_pest_corr2$determinand.definition)
densityplots<- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = TRUE))
legend <- get_legend(plots_with_legend[[1]])
plots <- lapply(chemicals, function(chem) plot_chemical(chem, mycolor, legend = FALSE))

chunk_size <- 2
plot_chunks <- split(plots, ceiling(seq_along(plots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 1, align = 'v')
  
  final_plot <- plot_grid(legend, combined_plot, ncol = 1, rel_heights = c(0.1, 1))
  
  # Save the combined plot
  ggsave(filename = paste0("combined_pesticides_boxplots_part_", i, ".png"), plot = final_plot, width = 10, height = 15)
}



#PLOT 2

# Helper function to extract the legend
get_legend <- function(my_plot) {
  tmp <- ggplot_gtable(ggplot_build(my_plot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  if (length(leg) > 0) {
    legend <- tmp$grobs[[leg]]
    return(legend)
  } else {
    return(NULL)
  }
}


plot_chemical_density <- function(chemical_name, mycolor) {
  # Filter the dataframe for the specific chemical
  DF2_filtered <- Total_pest_corr2 %>% filter(determinand.definition == chemical_name)
  
  # Calculate summary statistics
  summary_stats <- DF2_filtered %>%
    group_by(year, sample.samplingPoint.notation) %>%
    summarise(mean_value = mean(result),
              max_value = max(result),
              min_value = min(result),
              .groups = 'drop')  # Ensure to drop group information
  
  # Create the plot
  p <- ggplot(data = summary_stats, aes(x = as.factor(year), y = mean_value, color = sample.samplingPoint.notation)) +
    geom_point(size = 3) +  # Mean points
    geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
    labs(x = "Year", y = "Concentration (µg/l)", title = paste("Concentration of", chemical_name)) +
    scale_color_manual(values = mycolor) +
    theme_minimal() +
    theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
          axis.text.y = element_text(size = 18),
          axis.title = element_text(size = 20),
          plot.title = element_text(size = 20)) +
    theme(legend.position = "none") +
    scale_y_log10()
  
  return(p)
}


# Apply the function to each unique chemical
unique_chemicals <- unique(Total_pest_corr2$determinand.definition)
densityplots <- lapply(unique_chemicals, function(chem) plot_chemical_density(chem, mycolor))

# Combine plots into chunks of 15 per row
chunk_size <- 10
plot_chunks <- split(densityplots, ceiling(seq_along(densityplots) / chunk_size))

for (i in seq_along(plot_chunks)) {
  combined_plot <- plot_grid(plotlist = plot_chunks[[i]], ncol = 2, align = 'v')
  
  # Save the combined plot
  ggsave(filename = paste0("SUMMARY_combined_pesticide_density_plots_part_", i, ".png"), plot = combined_plot, width = 20, height = 30)
}














#SECTION
#No of unique pesticides monitored per year and per region (total, insecticides and herbicides)
head(DF2)

TOTAL <- DF_water %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(n_distinct_pests = n_distinct(determinand.definition))

Insect <- insecticides %>%
  group_by(year) %>%
  summarise(n_distinct_pests = n_distinct(determinand.definition))

Herb <- herbicides %>%
  group_by(year) %>%
  summarise(n_distinct_pests = n_distinct(determinand.definition))


all_pest_samp_reg <- ggplot(TOTAL, aes(x = year, y = n_distinct_pests, fill = sample.samplingPoint.notation)) + 
  scale_fill_manual(values =mycolor) +
  geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Number of Pesticides", fill = "Region") +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5))
ggsave(all_pest_samp_reg, file = "Number of pesticides sampled per year per region.tiff")


all_ins_samp <- ggplot(Insect, aes(x = year, y = n_distinct_pests)) + geom_bar(stat = "identity", position = "dodge") + 
  labs(x = "Year", y = "Number of Insecticides") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15))
ggsave(all_ins_samp, file = "Number of insecticide sampled per year.tiff")


all_hrb_samp <- ggplot(Herb, aes(x = year, y = n_distinct_pests)) + geom_bar(stat = "identity", position = "dodge") + 
  labs(x = "Year", y = "Number of Herbicides") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15))
ggsave(all_hrb_samp, file = "Number of herbicides sampled per year.tiff")



#SECTION
#Mean insecticide conc per year and region

mean_insect <- insecticides_corrected %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(result))

p <- ggplot(data = mean_insect, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Insecticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean of insecticide concs per year.tiff", height = 10, width = 15)

#herbicide

mean_herb <- herbicides_corrected %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(result))

p <- ggplot(data = mean_herb, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Herbicides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 


# Print the plot
print(p)

ggsave(p, file = "Mean of herbicides concs per year.tiff", height = 10, width = 15)


#pesticide
mean_pest <- Total_pest_corr2 %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(result))

p <- ggplot(data = mean_pest, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Pesticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean of Pesticides concs per year.tiff", height = 10, width = 15)




#SECTION
#Mean conc total insect, herbs and pest monitored per sample per site, region and year 
head(insecticides_corrected)
sum_insect_sample <- insecticides_corrected %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label, sample.sampleDateTime) %>%
  summarise(sum = sum(result))
mean_insect_site <- sum_insect_sample %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(sum))

mean_insect_site_rg <- mean_insect_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))

p <- ggplot(data = mean_insect_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Insecticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean total insecticide concs per site, region and year.tiff", height = 10, width = 15)

#herbicide
sum_herb_sample <- herbicides_corrected %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label, sample.sampleDateTime) %>%
  summarise(sum = sum(result))

mean_herb_site <- sum_herb_sample %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(sum))

mean_herb_site_rg <- mean_herb_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))

p <- ggplot(data = mean_herb_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Herbicides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 


# Print the plot
print(p)

ggsave(p, file = "Mean total herbicides concs per site, region and year.tiff", height = 10, width = 15)


#pesticide
sum_pest_sample <- Total_pest_corr2 %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label, sample.sampleDateTime) %>%
  summarise(sum = sum(result))

mean_pest_site <- sum_pest_sample %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(sum))
mean_pest_site <- Total_pest_corr2 %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(result))
mean_pest_site_rg <- mean_pest_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))
head(Total_pest_corr2)

ggplot(mean_pest_site, aes(x= year, y= mean, fill = sample.samplingPoint.notation)) +geom_point() + scale_fill_manual(values = mycolor) +
  scale_y_log10()

p <- ggplot(data = mean_pest_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Pesticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean total Pesticides concs per site, region and year.tiff", height = 10, width = 15)


#SECTION
#Mean conc per site, region and year 
mean_insect_site <- insecticides_corrected %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(result))

mean_insect_site_rg <- mean_insect_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))

p <- ggplot(data = mean_insect_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Insecticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean of insecticide concs per site, region and year.tiff", height = 10, width = 15)

#herbicide

mean_herb_site <- herbicides_corrected %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(result))

mean_herb_site_rg <- mean_herb_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))

p <- ggplot(data = mean_herb_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Herbicides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 


# Print the plot
print(p)

ggsave(p, file = "Mean of herbicides concs per site, region and year.tiff", height = 10, width = 15)


#pesticide

mean_pest_site <- Total_pest_corr2 %>%
  group_by(year,sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(mean = mean(result))

mean_pest_site_rg <- mean_pest_site %>%
  group_by(year,sample.samplingPoint.notation) %>%
  summarise(mean = mean(mean))

p <- ggplot(data = mean_pest_site_rg, aes(x = as.factor(year), y = mean, color = sample.samplingPoint.notation)) +
  geom_point(size = 3) +  # Mean points 
  geom_line(aes(group = sample.samplingPoint.notation), size = 1) +  # Line connecting points by sample.samplingPoint.notation
  labs(x = "Year", y = "Concentration (µg/l)", title = "Concentration of Pesticides", color = "Region") +
  scale_color_manual(values = mycolor) +
  theme_minimal() +
  theme(axis.text.x = element_text(hjust = 0.5, vjust = 0.5, angle = 90, size = 18),
        axis.text.y = element_text(size = 18),
        axis.title = element_text(size = 25),
        plot.title = element_text(size = 20),
        legend.text = element_text(size = 14), legend.title = element_text(size = 20)) +  # Adjust legend text size
  scale_y_log10() 

# Print the plot
print(p)

ggsave(p, file = "Mean of Pesticides concs per site, region and year.tiff", height = 10, width = 15)

library(glm2)


#SECTION
#Average number of samples taken per riverine site 

insecticides_corrected_scaled <- insecticides_corrected %>%
  mutate(across(where(is.numeric), scale))

head(insecticides_corrected)
insect_samps_per_riv <- insecticides %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n())

insect_samps_per_riv2 <- insect_samps_per_riv %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

herb_samps_per_riv <- herbicides %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n())

herb_samps_per_riv2 <- herb_samps_per_riv %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

tots_samps_per_riv <- DF_water %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n())

tots_samps_per_riv2 <- tots_samps_per_riv %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

all_samp_tot <- ggplot(tots_samps_per_riv2, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site", fill = "Region") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15))
ggsave(all_samp_tot, file = "Average num of samples for pesticides per year per river.tiff")

all_samp_ins <- ggplot(insect_samps_per_riv2, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_ins, file = "Average num of samples for insecticide per year per river.tiff")


all_samp_hrb <- ggplot(herb_samps_per_riv2, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_hrb, file = "Average num of samples for herbicides per year per river.tiff")


##part b - avergae number of entire pesticide samples collected per site, region and year

#Average number of samples taken per riverine site 

insecticides_corrected_scaled <- insecticides_corrected %>%
  mutate(across(where(is.numeric), scale))

head(insecticides_corrected)
insect_samps_per_riv_whole <- insecticides %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n_distinct(sample.sampleDateTime))

insect_samps_per_riv2_whole <- insect_samps_per_riv_whole %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

herb_samps_per_riv_whole <- herbicides %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n_distinct(sample.sampleDateTime))

herb_samps_per_riv2_whole <- herb_samps_per_riv_whole %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

tots_samps_per_riv_whole <- DF_water %>%
  group_by(year, sample.samplingPoint.notation, sample.samplingPoint.label) %>%
  summarise(n_samples = n_distinct(sample.sampleDateTime))

tots_samps_per_riv2_whole <- tots_samps_per_riv_whole %>%
  group_by(year, sample.samplingPoint.notation) %>%
  summarise(mean_sampls_river = mean(n_samples))

all_samp_tot <- ggplot(tots_samps_per_riv2_whole, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site", fill = "Region") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15))
ggsave(all_samp_tot, file = "Average num of entire samples for pesticides per year per river.tiff")

all_samp_ins <- ggplot(insect_samps_per_riv2_whole, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_ins, file = "Average num of entire samples for insecticide per year per river.tiff")


all_samp_hrb <- ggplot(herb_samps_per_riv2_whole, aes(x = year, y = mean_sampls_river, fill = sample.samplingPoint.notation)) + geom_bar(stat = "identity", position = "stack") + 
  labs(x = "Year", y = "Average Number of Samples Per Site") +
  scale_fill_manual(values =mycolor) +
  theme_classic() +
  theme(axis.text.x = element_text( hjust = 0.5, vjust = 0.5), axis.title = element_text(size = 20), axis.text = element_text(size = 15), legend.position =  "none")
ggsave(all_samp_hrb, file = "Average num of entire samples for herbicides per year per river.tiff")



#Models

insecticides_corrected_scaled <- insecticides_corrected %>%
  mutate(across(where(is.numeric), scale))

herbicides_corrected_scaled <- herbicides_corrected %>%
  mutate(across(where(is.numeric), scale))

total_pest_corr_scaled <- mean_pest_site_rg %>%
  mutate(across(where(is.numeric), scale))

glm_model_fixed_insect <-glm(result ~ year + sample.samplingPoint.notation, 
                      data = insecticides_corrected_scaled, family = gaussian)
print(glm_model_fixed_insect)

glm_model_fixed_pest<-lmer(mean ~ year*sample.samplingPoint.notation + (1|sample.samplingPoint.notation), 
                      data = total_pest_corr_scaled, control = lmerControl(optimizer = "nloptwrap"))
print(glm_model_fixed_pest)

glm_model_fixed_herb<-glm(result ~ year + sample.samplingPoint.notation, 
                      data = herbicides_corrected_scaled, family = gaussian)
print(glm_model_fixed_herb)



#Time series model - pesticides




library(lubridate)
library(zoo)
library(forecast)

#PLOTTING TIME-SERIES
agg_data <- tots_samps_per_riv2 %>%
  group_by(year) %>%
  summarise(mean_sampls_river = mean(mean_sampls_river))
time_series <- zoo(agg_data$mean_sampls_river, order.by = agg_data$year)

# Print the time series
print(time_series)

plot(time_series, xlab ="Yearly Data",
     ylab ="Total average pesticide concentration",
     main ="Average Riverine total pesticide concentration in Britain",
     col.main ="darkgreen")

#FORCASTING
fit <- auto.arima(time_series) #AutoRegressive Integrated Moving Average - searches through models and chooses the one with lowest AIC value
summary(fit)
# Next 5 forecasted values
forecast(fit, 5)

# plotting the graph with next
# 5 weekly forecasted values
plot(forecast(fit, 5), xlab ="Yearly Data",
     ylab ="Total average pesticide concentration",
     main ="Average Riverine total pesticide concentration in Britain",
     col.main ="darkgreen")

activity <- read.csv(unzip("activity.zip"))
str(activity)
activity_nona <- activity[!is.na(activity$steps),]
str(activity_nona)
library(dplyr)
bydate <- group_by(activity_nona, date)
days <- summarise(bydate, total = sum(steps))
mean_steps_by_date <- mean(days$total)
mean_steps_by_date
median_steps_by_date <- median(days$total)
median_steps_by_date
(days)

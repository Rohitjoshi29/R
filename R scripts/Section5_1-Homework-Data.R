#importing file
Birth_df <- read.csv(file.choose())
Birth_df[1:3,]


head(Life_exp_df)
#1960 Filter

Filtered_df<- Birth_df[Birth_df$Year==1960,]


# Merge for 1960

Merge_1963 <- merge(Filtered_df, 
                    Life_exp_df,
                    by.x =  "Country.Code",
                    by.y = "Country_Code")


Merge_2013 <- merge(Birth_df[Birth_df$Year==2013,], 
                    Life_exp_df,
                    by.x =  "Country.Code",
                    by.y = "Country_Code")

head(Merge_1963)
Merge_1963$Life_Expectancy_At_Birth_2013<- NULL

?qplot

qplot(data = Merge_1963,
      x=Fertility.Rate,
      y=Life_Expectancy_At_Birth_1960,
      color=Region,
      xlab = "Fertility_rate",
      ylab = "Life_expentancy"
      )




qplot(data = Merge_2013,
      x=Fertility.Rate,
      y=Life_Expectancy_At_Birth_2013,
      color=Region,
      xlab = "Fertility_rate",
      ylab = "Life_expentancy"
)

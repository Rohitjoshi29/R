#Best Player
#Information is publicly available and taken from Wikipedia
# This is for comparing three great batsman from my era and their  performances

df_1 <- data.frame(
  c(200,329,15921,53.78,51,68),
  c(168,287,13378,51.85,41,62),
  c(166,280,13289,55.37,45,55),
  c(164,286,13288,52.31,36,63),
  c(134,233,12400,57.4,38,52),
  c(157,282,12158,45.36,32,56),
  c(131,232,11953,52.88,34,48),
  c(164,280,11867,51.37,30,66),
  c(149,252,11814,49.84,34,50),
  c(156,265,11174,50.56,27,63),
  c(168,260,10927,51.06,32,50),
  c(125,214,10122,51.12,34,45),
  c(118,213,10099,52.05,34,33)
)

df_2 <- as.data.frame(t(df_1))
is.data.frame(df_2)

head(df_2)


colnames(df_2) <- Cols
rownames(df_2) <- Players
Cols <- c("Mat","Innings",	"Runs",	"Avg",	"100",	"50")
Players <- c("Sachin_Tendulkar",
             "Ricky_Ponting",
             "Jacques_Kallis",
             "Rahul_Dravid",
             "Kumar_Sangakara",
             "Alastair_Cook",
             "Brian_Lara",
             "Shivnarine_Chandrapaul",
             "Mahela_Jayawardhane",
             "Allan_Border",
             "Steve_Waugh",
             "Sunil_Gavaskar",
             "Yonus_khan"
)

qplot(data = df_2, x=df_2$Runs, y= df_2$Avg, color = rownames(df_2), 
      size = df_2$Runs ,
      #shape = c(4,8,15,16,17,18,21,22,3,42, 3, 11, 20),
      xlab = "Runs in Thousands", ylab ="Avg", main="10000 Test Runs club")
 

?qplot


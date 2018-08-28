# Cricket Project 
# Information is publicly available and taken from http://www.espncricinfo.com
# This is for comparing three great batsman from my era and their away performances

stats_tendulkar <- c(106,	176,	8705,	54.74,	248,	29,	36,6	,2)
stats_lara <- c(66,	121,	5736,	47.8,	277,	17,	22,	5,	2)
stats_ponting <- c(71,	125,	5360,	45.81,	206,	16,	23,	6,	1)


Players<- c("tendulkar","lara","ponting")

com_df <- data.frame(stats_tendulkar,stats_lara,stats_ponting)
head(com_df)
colnames(com_df)
rownames(com_df) <- c ("Mats",	"Inns",	"Runs",	"Ave",	"HS", 	"100s",	"50s",	"MoM",	"MoS")
com_df <- as.data.frame( t(com_df))

qplot(data = com_df, x= Inns, y= Runs, size = Ave, color= rownames (com_df), 
      xlab = "No of Innings", ylab = "Runs in Thousands", main = 'Away Performance Comparison' )
?qplot



head (com_df)
com_df <- as.data.frame( t(com_df))


colnames(com_df) <- c ("Mats",	"Inns",	"Runs",	"Ave",	"HS", 	"100s",	"50s",	"MoM",	"MoS")
rownames (com_df) <- Players

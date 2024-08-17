#All stats are publicly available. 
#Motly taken from espncrickinfo.com , wikipedia trial edit

#steps
# Gathering data
nw_df <- data.frame(
          c(106,176,	8705,	54.74,	248,	29,	36,	6,2),
          c(66,	121,	5736,	47.8,	  277,	17,	22,	5,	2),
          c(71,	125,	5360,	45.81,	206,	16,	23,	6,	1),
          c(74,	130,	5919,	53.8,	  189,	20,	23,	7,	2),
          c(94,	166,	7690,	53.03,	270,	21,	36,	8,	4),
          c(66,	125,	5295,	45.64,	244,	17,	22,	4,	2),
          c(61,	110,	4317,	41.5,	  275,	10,	16,	3,	1),
          c(53,	97,	  4888,	53.13,	319,	14,	23,	3,	1),
          c(76,	116,	5083,	55.85,	200,	16,	20,	7,	3),
          c(70,	120,	5431,	56.57,	200,	14,	28,	6,	0),
          c(60,	106,	5055,	52.11,	221,	18,	22,	1,	0),
          c(81,	143,	5579,	46.1,	  203,	11,	33,	1,	3),
          c(71,	127,	5608,	48.76,	267,	16,	19,	6,	2)
          )

# Transpose
nw_df <- as.data.frame(t(nw_df))
#verify
is.data.frame(nw_df)
head(nw_df)





#assign rownames
rownames(nw_df)<- c(
  "Sachin Tendulkar",
  "Brian lara",
  "Ricky Ponting",
  "Jacques Kallis",
  "Rahul Dravid",
  "Alaister Cook",
  "Mahela Jayawardene",
  "Kumara Sangakara",
  "Steve Waugh",
  "Allan Border",
  "Sunil Gavaskar",
  "Shivnarine Chanderpaul",
  "Younis Khan"
  
)
#Assign Columnnames
colnames(nw_df) <- c(
  "Mats",	"Inns",	"Runs",	"Ave",	"HS",	"100s",	"50s",	"MoM",	"MoS"
  )


Players <- rownames(nw_df)


#ggplot
ggplot(data = nw_df, aes(x= Inns, y=Ave,
       size=Runs, color= Players,
       shape = Players
       )) + geom_point()+
  scale_shape_manual(values=1:13)  + labs(size = "Runs")+
  labs(x="No of Innings" )+ labs(y="Avg")+
  labs(title = "Away Performance of 10000 test run scorer")+
  labs(caption = "(based on data from Wiki, ESPN...)")+
  scale_size_area()+
  theme(axis.title.x = element_text(size = 15, colour = "Black" ),
        axis.title.y = element_text(size = 15, colour = "Black" ),
        title = element_text(size = 25, colour = "Blue" )
        )
       


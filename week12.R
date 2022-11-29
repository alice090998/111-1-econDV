library(magrittr)
df <- data.frame(
  age = c("未滿15歲", "15歲", "16歲", "17歲", "18歲", "19歲", "20歲", "21歲", "22歲", "23歲", "24歲", "25歲", "26歲","27歲", "28歲", "29歲", "30歲", "31歲", "32歲" ,"33歲", "34歲", "35 ~ 39歲", "40 ~ 44歲", "45 ~54歲", "55 ~ 64歲", "65歲以上"),
  person = c( 0, 0, 143, 274, 1028, 1124, 2029, 2393, 2983, 3865, 4829, 6010, 7953, 10159, 9435, 9848, 9644, 8471, 7630, 7323, 5946, 19093, 7117, 5625, 1938, 462, 0, 0, 0, 1, 224, 355, 838, 1108, 1665, 2205, 2858, 4027, 5740, 7346, 7008, 8971, 9085, 8548, 8097, 8034, 7593, 26453, 10910, 8990, 3905, 1361),
  gender = c('f', 'f', 'f','f' ,'f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','f','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m','m')
)
p1<-df %>% 
  ggplot(aes(x= age, y= person)) +
  geom_line(aes(group = age))+
  geom_point(aes(color=gender), size=4) +
  theme(legend.position="right")
p1

p2 <- p1 + labs(title="107年各年齡結婚男女比",
  subtitle = "各年齡男女分布圖",
  caption = "資料來源:https://data.gov.tw/dataset/102822",
  tag="圖1") +
  theme(plot.title=element_text(face="bold.italic", 
    color="steelblue", 
    size=24,  
    hjust=0.5,
    vjust=0.5,
    angle=360), 
    plot.caption=element_text(face="bold",color="black",size=10))
p2



library(reshape2)
library(magrittr)
data <- melt(WEEK13,id="統計期")

data

colnames(data) <- c("year","sample","value")

p1 <- data %>%
  ggplot(aes(x = year,y = value,group = sample,color = sample,shape = sample))+
  geom_point(size=2)+
  geom_line(size=1)+
  xlab("year")+
  ylab("人數")+
  theme_bw()+
  theme(panel.grid.major=element_line(colour=NA),
    panel.background = element_rect(fill = "transparent",colour = NA),
    plot.background = element_rect(fill = "transparent",colour = NA),
    panel.grid.minor = element_blank(),
    legend.box.background = element_rect(color="black"))
p1


ggplot(data = data ,aes(x = year,y = value,group = sample,color = sample,shape = sample))+
  geom_point(size=2)+
  geom_line(size=1)+
  xlab("year")+
  ylab("人數")+
  theme_bw()+
  theme(panel.grid.major=element_line(colour=NA),
    panel.background = element_rect(fill = "transparent",colour = NA),
    plot.background = element_rect(fill = "transparent",colour = NA),
    panel.grid.minor = element_blank(),
    legend.box.background = element_rect(color="black"))


p2 <- p1 + labs(title="COVID-19對台灣旅遊業造成奪大的衝擊?",
  subtitle = "近五年來台旅客人數",
  caption = "資料來源:https://www.stat.gov.tw/Point.aspx?sid=t.12&n=3591&sms=11480",
  tag="圖1") +
  theme(plot.title=element_text(face="bold.italic",
    color="steelblue",
    size=15,
    hjust=0.5,
    vjust=0.5,
    angle=360),
    plot.caption=element_text(face="bold",color="black",size=10))
p2



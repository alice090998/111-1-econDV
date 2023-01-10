library(reshape2)
library(magrittr)
data <- melt(WEEK13,id="統計期")

data

colnames(data) <- c("year","sample","value")



ggplot(data=data,
  mapping = aes(x=year,y=value,
    colour=sample,group=sample))+
  geom_point(shape=15,size=3)+
  geom_line(size=2,alpha=0.9)+
  scale_colour_manual(values = c("#FF9900","#ea5a49",
    "#b16ba8","#5a72b5","#7caf2a","#333333","#cc3333"))+
      labs(title = "直轄市之中，誰的每日交通事故發生件數最少?",
        subtitle = "近五年來台旅客人數",
        caption="資料來源:https://www.stat.gov.tw/Point.aspx?sid=t.12&n=3591&sms=1148")+
  theme(plot.title=element_text(face="bold.italic",
    color="steelblue",
    size=18,
    hjust=0.5,
    vjust=0.5,
    angle=360),
    plot.caption=element_text(face="bold",color="black",size=10,hjust=1.4))



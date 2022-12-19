library(reshape2)
library(magrittr)
data <- melt(data海外,id="年份")

data

colnames(data) <- c("sample","year","value")

p <- ggplot(data = data, aes(x = year, y = value, fill = sample)) +
  geom_bar(stat = "identity")
p


p1 <- p + labs(title="國人赴海外工作的人數有受到疫情的影響嗎?",
  subtitle = "單位:千人",
  caption = "資料來源:行政院主計總處",
  tag="圖1") +
  theme(plot.title=element_text(face="bold.italic",
    color="steelblue",
    size=24,
    hjust=0.5,
    vjust=0.5,
    angle=360),
    plot.caption=element_text(face="bold",color="black",size=10))
p1


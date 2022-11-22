data <- data.frame(
  game = c("Summer Olympic Games", "Winter Olympic Games", "World Cup"),
  money = c( 30413, 37023, 20441, 54510, 17213, 33438),
  group = c("Revenues","Costs")
)

p <- ggplot(data = data, aes(x = game, y = money, fill = group)) +
  geom_bar(stat = "identity", position = position_dodge())
p


p1 <- p+ scale_fill_manual(values=c("#CC3300", "#33CCCC"))

p2 <- p1 + labs(title="世界型運動比賽收支圖",
  subtitle = "三種比賽比較圖",
  caption = "資料來源",
  tag = "圖一") +
  theme(plot.title=element_text(face="bold.italic",
    color="steelblue",
    size=24,
    hjust=0.5,
    vjust=0.5,
    angle=360),
    plot.caption=element_text(face="bold",color="black",size=10))
p2



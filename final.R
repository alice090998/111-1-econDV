googlesheets4::gs4_deauth()
googlesheets4::read_sheet(ss="https://docs.google.com/spreadsheets/d/1RCtd1PsjT8PhpEOsTWRR7ESIPG3JCri2pTaUZZSK158/edit#gid=0",
  sheet = "工作表1")->新北扶幼比


library(tidyverse,warn.conflicts = FALSE)
library(tidyr)

pivot_longer(data=新北扶幼比,cols=2:7,
  names_to="year",
  values_to="新生人口")->新北扶幼比
新北扶幼比$city<-factor(新北扶幼比$city,levels = c("新北市","板橋區","樹林區","鶯歌區"))


ggplot(data=新北扶幼比,
  mapping = aes(x=year,y=新生人口,
    colour=city,group=city))+
  geom_point(shape=15,size=3)+
  geom_line(linewidth=2,alpha=0.9)+
  scale_colour_manual(values = c("#FF9900",
    "#CCCCCC","#999999","#666666"))+
      labs(title = "新北市各區扶幼比變化",
        subtitle = "扶幼比=(0-14歲人口)/(15-64歲人口)*100",
        caption="資料來源:中華民國統計資訊網")+
  theme(axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    axis.title.x = element_text(size = 15),
    axis.title.y = element_text(size = 15),
    legend.key.size = unit(30,"pt"))

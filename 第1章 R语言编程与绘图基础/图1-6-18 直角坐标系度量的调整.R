
library(ggplot2)
library(RColorBrewer)
library(reshape2)
df<-read.csv("MappingAnalysis_Data.csv", header = TRUE)

#--------------------------------------color+shape---------------------------
ggplot(data=df, aes(x=Time,y=value,fill=variable,shape=variable)) + 
  geom_line()+
  geom_point(size=4,colour="black") +
  scale_fill_manual(values=c("#FF9641","#FF5B4E","#B887C3","#38C25D"))+
  scale_shape_manual(values=c(21,22,23,24))+
  theme_classic()+
  theme(
    text=element_text(size=14,color="black"),
    plot.title=element_text(size=14,family="myfont",face="bold.italic",hjust=.5,color="black"),
    legend.background = element_blank(),
    legend.position=c(0.2,0.8)
  )


#--------------------------------------color+shape---------------------------
ggplot(data=df, aes(x=Time,y=value,fill=variable,shape=variable)) + 
  geom_line()+
  geom_point(size=4,colour="black") +
  scale_fill_manual(values=c("#FF9641","#FF5B4E","#B887C3","#38C25D"))+
  scale_shape_manual(values=c(21,22,23,24))+
  
  scale_x_continuous(name="Time(d)",breaks=seq(0,20,2))+
  scale_y_continuous(breaks=seq(0,90,10),limits=c(0,90),expand =c(0, 1))+
  
  theme_classic()+
  theme(
    text=element_text(size=14,color="black"),
    plot.title=element_text(size=14,family="myfont",face="bold.italic",hjust=.5,color="black"),
    legend.background = element_blank(),
    legend.position=c(0.2,0.8)
  )

library(shiny)
library(lubridate)
library(ggplot2)

#archivo<-read.csv("doc.csv", stringsAsFactors=F, header=T)
archivo<-read.csv("doc.csv")



server<-function(input, output){
  output$plot1<-renderPlot({
    
    selecteddata <- archivo[archivo$SITE==input$SITE & month(archivo$DATE)==input$month & year(archivo$DATE)==input$year,]
    ggplot(data=selecteddata,aes(x=selecteddata$HORA, y=selecteddata$PM10))+geom_smooth(color="red")+labs(x="HORA", y="PM10")+theme(axis.title= element_text(size=18), axis.text = element_text(size = 14))+
      ggtitle(paste("Incidecia sobre :", input$SITE))+theme(plot.title = element_text(vjust = 0.2, hjust = 0.5, size = 24, color = "Blue", face="bold"))
  })
}
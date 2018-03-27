library(shiny)
library(lubridate)
library(ggplot2)

Combined<-read.csv("doc.csv")



ui<-fluidPage(
  headerPanel("Calidad del Aire"),
  sidebarPanel(
    selectInput("SITE",label="Select site", selected="Bolivia", choices=list("Bolivia", "CADE", "Carvajal", "Cazuca", "Central de Mezclas", "Chico Lago", "Fontibon", "Guaymaral", "Kennedy", "Las Ferias", "MAVDT", "OPSIS")),
    selectInput("DATE",label="Select Year", selected=2010, choices=c(2009,
                                                                     2009,2010,2011,2012,2013)),
    selectInput("MES",label="Select Month", selected=9, choices=c(1,
                                                                    2,3,4,5,6,7,8,9,10,11,12))
  ),
  mainPanel(
    plotOutput("plot1")
  )
)

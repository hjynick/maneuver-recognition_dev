library(shiny)
library(shinydashboard)
shinyUI( 
  ##fluidPage(
    ##titlePanel("Manoever Erkennung"),
  # titlePanel("Uploading Files"),
  # 
  # # Sidebar layout with input and output definitions ----
  # sidebarLayout(
  #   
  #   # Sidebar panel for inputs ----
  #   sidebarPanel(
  #     
  #     # Input: Select a file ----
  #     fileInput("file1", "Choose XLSX File",
  #               multiple = TRUE,
  #               accept = c("text/xlsx",
  #                          "text/comma-separated-values,text/plain",
  #                          ".xlsx")),
  #     
  #     # Horizontal line ----
  #     tags$hr(),
  #     
  #     # Input: Checkbox if file has header ----
  #     checkboxInput("header", "Header", TRUE)
  #   ),
  #   mainPanel(
  #     leafletOutput("map",height="600px"),
  #     tableOutput("contents")
  #   )
  # ),
  #     
  # 
  # br()
  
  # pageWithSidebar(
  # headerPanel("Manoever Erkennung"),
  # sidebarPanel(
  #   fileInput('file1','Choose xlsx File',
  #             accept = c('text/xlsx','text/comma-separated-values,text/plain')),
  #   tags$hr()
    #checkboxInput('header','Header',TRUE)
  #  radioButtons('sep','Separator',
#                 c(Comma=',',Semicolon=';',Tab='\t'),
 #                'Comma'),
 #   radioButtons('quote', 'Quote',
 #                c(None='',
 #                  'Double Quote'='"',
 #                  'Single Quote'="'"),
 #                'Double Quote')
  ##br(),
  ##leafletOutput("map", height="700px"),
  # column(4,br(),br(),br(),br(),plotOutput("plot", height="300px")),
  ##br(),
  ##sidebarPanel(
  
  # Input: Select a file ----
  ##fileInput('file1', 'Choose xlsx file',
    ##        accept = c(".xlsx")
  ##),
  
 
  ##br(),
  
  # Input: Checkbox if file has header ----
  #checkboxInput("header", "Header", TRUE)
  ##h5(textOutput("select_var"))
  dashboardPage(
    dashboardHeader(title="Maneuver Recognition"),
    dashboardSidebar(fileInput('file1', 'Choose xlsx file',
                                 accept = c(".xlsx")),
                     sliderInput("slider1", label = h3("Sample_Range"), min = 1, 
                                 max = 30, value = 10),
                     sliderInput("slider2",label=h3("Sample_Start"),min=1,
                                 max=200,value = 1)
    ),
    dashboardBody(
    
     fluidRow( box(
        title = "Global_Map",
        collapsible = TRUE,
        width = "100%",
        height = "100%",
        leafletOutput("map1")
        
    )),
     fluidRow(
       column(8,box(
        title = "Sample_Map",
        width = "100%",
        height = "100%",
        leafletOutput("map2")
      )),
       column(4,box(
         title = "Maneuver Recognition", width = "100%",height = 460, background = "light-blue",
         textOutput("sw")
       )))
      
    )
  

))
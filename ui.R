shinyUI(
    fluidPage(theme = shinytheme("cerulean"),
    headerPanel("Cinetica d'inattivazione virale")
    ,
    sidebarPanel(
        # textInput('x', "Inserisci i tempi","")
        # ,
        textInput('y', "Inserisci i titoli",""),
        tags$h6("inserire i dati utilizzando la virgola come separatore e il punto per i decimali"),
        actionButton("submit","Submit"),
        actionButton("reset", "Refresh"), 
        hr(),
        br(),
        tableOutput('table')
       
     
    )
    ,
    mainPanel(
      column(8, 
      plotOutput("graf"), 
      hr(),
      textOutput("pred"), 
      textOutput( "corr")))
   
  ))


shinyUI(
  
  pageWithSidebar(
   
    headerPanel("Cinetica d'inattivazione virale")
    ,
    sidebarPanel(
      wellPanel(
        textInput('x', "enter X value here","")
        ,
        textInput('y', "enter Y value here","")
        ,
        actionButton("submit","Submit")
      )
    )
    ,
    mainPanel(uiOutput('table'), 
              plotOutput("graf"))
    
  ))

# ui<-fluidPage("Cinetica d'inattivazione virale",
#     theme = shinytheme("cerulean"), 
#     
#     sidebarLayout(
#                    sidebarPanel(sidebarPanel(
#                      textInput('vec1', 'Enter a vector (comma delimited)', "")
#                    )),
#                    mainPanel("Risultati", 
#                              tableOutput("t"))
#                  )
#     
           
    # tabPanel("TAB1",
    #          sidebarLayout(
    #            sidebarPanel(),
    #            mainPanel()
    #          )
    # ),
    # 
    # tabPanel("TAB2",
    #          sidebarLayout(
    #            sidebarPanel(),
    #            mainPanel()
    #          )
    # ), 
    #                
    # tabPanel("TAB2",
    #          sidebarLayout(
    #            sidebarPanel(),
    #            mainPanel()
    #          )
    # ), 
    # 
    # tabPanel("....",
    #          sidebarLayout(
    #              sidebarPanel(),
    #              mainPanel()
    #          )
    # )     
 # )        
       


library("shiny")    
shinyUI(
  
  pageWithSidebar(
    theme = shinytheme("cerulean"),
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

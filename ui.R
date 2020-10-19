ui<-fluidPage("Cinetica d'inattivazione virale",
    theme = shinytheme("cerulean"), 
    
    sidebarLayout(
                   sidebarPanel(sidebarPanel(
                     textInput('vec1', 'Enter a vector (comma delimited)', "")
                   )),
                   mainPanel("Risultati", 
                             tableOutput("t"))
                 )
    
           
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
  )        
       


ui<-fluidPage("Cinetica d'inattivazione virale",
    theme = shinytheme("cerulean"), 
    
    sidebarLayout(
                   sidebarPanel("Input data"),
                   mainPanel("Risultati")
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
       


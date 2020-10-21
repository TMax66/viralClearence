
 shinyServer(
  function(input,output,session){
    
    dt = reactive({
      if (input$submit > 0) {
        #df <- data.frame(tempo=as.numeric(unlist(strsplit(input$x, ','))),titolo=as.numeric(unlist(strsplit(input$y, ','))))
        df <- data.frame(tempo=c(0,1.5,3,4.5),titolo=as.numeric(unlist(strsplit(input$y, ','))))
        df$titre <- df$titolo
        return(list(df=df))
      }
    })
    

    output$table <- renderTable({
      dt()$df[,c(1:2)]
    })
    
    output$graf <- renderPlot(  
      if (input$submit > 0) {
      dt()$df %>% as.tibble() %>% 
        ggplot(aes(x=tempo, y =titre))+ geom_point()+
        geom_smooth(method = "lm",  formula = y ~ x, col = "blue")+
        stat_cor(aes(label = ..r.label..), label.y = 6)+
        stat_regline_equation(label.y = 5)+
        theme_ipsum_rc() + labs(x= "tempo", y="titolo")+
          theme(axis.title.x = element_text(   size=12, face="bold"),
                axis.title.y = element_text(  size=12, face="bold"))
      }  
    )
    
    observeEvent(input$reset, {
      session$reload()
    })
  
    
    mod <- reactive(lm(titre ~ tempo, data =dt()$df))
    output$pred <- renderText(
      if (input$submit > 0) {
    paste("Il titolo previsto a 48h è: ", round(coef(mod())[1]+coef(mod())[2]*48, 2))
      }
    )
    
    output$corr <- renderText(
      if (input$submit > 0) {
      paste("Il coefficiente di correlazione r è :" , round(cor(dt()$df$titre,dt()$df$tempo),2))
      }
    )

  })

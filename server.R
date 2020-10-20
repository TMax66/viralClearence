
 shinyServer(
  function(input,output,session){
    
    dt = reactive({
      if (input$submit > 0) {
        df <- data.frame(tempo=as.numeric(unlist(strsplit(input$x, ','))),titolo=as.numeric(unlist(strsplit(input$y, ','))))
        df$titre <- 10^df$titolo
        return(list(df=df))
      }
    })
    
    output$table <- renderTable({
      if (is.null(dt())) {return()}
      print(dt()$df[,c(1:2)])
    }, 'include.rownames' = FALSE
    , 'include.colnames' = TRUE
    , 'sanitize.text.function' = function(x){x}
    )
    
    output$graf <- renderPlot(
      dt()$df %>% as.tibble() %>% 
        ggplot(aes(x=tempo, y =log10(titre)))+ geom_point()+
        geom_smooth(method = "lm",  formula = y ~ x, col = "blue")+
        stat_cor(aes(label = ..r.label..), label.y = 6)+
        stat_regline_equation(label.y = 5)+
        theme_ipsum_rc()
    )
    
    
    
    

  })

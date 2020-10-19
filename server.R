server<-function(input, output) {
  


  
  dt <- reactive( tibble( tempo= c(0, 1.5, 3, 4.5), titolo = as.numeric(unlist(strsplit(input$vec1, ",")))))
  
  output$t <- renderTable(dt())
  
  # output$graf <- renderPlot(
  #   dt() %>% 
  #     ggplot(aes(x=tempo, y =log10(titolo)))+ geom_point()+
  #     geom_smooth(method = "lm",  formula = y ~ x, col = "blue")+
  #     stat_cor(aes(label = ..r.label..), label.y = 6)+
  #     stat_regline_equation(label.y = 5)+
  #     theme_ipsum_rc()
  #   
  # )
  # 
  
  
  
}

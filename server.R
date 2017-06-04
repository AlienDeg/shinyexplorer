library(ggplot2)
library(methods)
library(shinyBS)
library("MASS")
data(geyser)
library(hexbin)



function(input, output, session){
  

  
  observeEvent(input$link_to_tabpanel_geom_step, {
    newvalue <- "geom_step"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_text, {
    newvalue <- "geom_text"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_tile, {
    newvalue <- "geom_tile"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_violin, {
    newvalue <- "geom_violin"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_abline, {
    newvalue <- "geom_abline"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_area, {
    newvalue <- "geom_area"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_bar, {
    newvalue <- "geom_bar"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_bin2d, {
    newvalue <- "geom_bin2d"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_col, {
    newvalue <- "geom_col"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_contour, {
    newvalue <- "geom_contour"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_count, {
    newvalue <- "geom_count"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_curve, {
    newvalue <- "geom_curve"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_density, {
    newvalue <- "geom_density"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_density2d, {
    newvalue <- "geom_density2d"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_dotplot, {
    newvalue <- "geom_dotplot"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_error, {
    newvalue <- "geom_error"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_freqpoly, {
    newvalue <- "geom_freqpoly"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_hex, {
    newvalue <- "geom_hex"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_histogram, {
    newvalue <- "geom_histogram"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_label, {
    newvalue <- "geom_label"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_line, {
    newvalue <- "geom_line"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_path, {
    newvalue <- "geom_path"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_point, {
    newvalue <- "geom_point"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_polygon, {
    newvalue <- "geom_polygon"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_quantile, {
    newvalue <- "geom_quantile"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_raster, {
    newvalue <- "geom_raster"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_rect, {
    newvalue <- "geom_rect"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_ribbon, {
    newvalue <- "geom_ribbon"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_rug, {
    newvalue <- "geom_rug"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_segment, {
    newvalue <- "geom_segment"
    updateNavbarPage(session, "main", newvalue)
  })
  
  observeEvent(input$link_to_tabpanel_geom_spoke, {
    newvalue <- "geom_spoke"
    updateNavbarPage(session, "main", newvalue)
  })
  
  
  

    

  sunspotyear <- data.frame(
    Year = as.numeric(time(sunspot.year)),
    Sunspots = as.numeric(sunspot.year)
     )
  f <- function(x) is.numeric(x) & !is.na(x)
  
 
  output$plot_geom_bar <- renderPlot({
    ggplot(mtcars, aes(factor(cyl))) + geom_bar(alpha = input$geom_bar_element1, 
                                                color = input$geom_bar_element2, 
                                                fill = input$geom_bar_element3,
                                                linetype = input$geom_bar_element4,
                                                size = input$geom_bar_element5,
                                                width = input$geom_bar_element6) 
  })
 output$geom_bar_text <- renderText({
   paste('ggplot(mtcars, aes(factor(cyl))) + \n geom_bar(alpha = ',input$geom_bar_element1,',\n color = "',input$geom_bar_element2,'",\n fill = "',input$geom_bar_element3,'",\n linetype = "',input$geom_bar_element4,'",\n size = ',input$geom_bar_element5,',\n width = ',input$geom_histogram_element6,')',sep='' )
  })

 output$plot_geom_bar1 <- renderPlot({
   ggplot(BOD, aes(x= factor(Time), y=demand)) + geom_bar(stat = 'identity',
                                               alpha = input$geom_bar_element1, 
                                               color = input$geom_bar_element2, 
                                               fill = input$geom_bar_element3,
                                               linetype = input$geom_bar_element4,
                                               size = input$geom_bar_element5,
                                               width = input$geom_bar_element6) 
 })
 output$geom_bar_text1 <- renderText({
   paste('ggplot(BOD, aes(x= factor(Time), y=demand)) + \n geom_bar(stat = "identity",alpha = ',input$geom_bar_element1,',\n color = "',input$geom_bar_element2,'",\n fill = "',input$geom_bar_element3,'",\n linetype = "',input$geom_bar_element4,'",\n size = ',input$geom_bar_element5,',\n width = ',input$geom_histogram_element6,')',sep='' )
 })
  
 
  output$geom_bar_table <- renderTable({
    head(mtcars)
  })
  
  output$geom_bar_table1 <- renderTable({
    head(BOD)
  })
  
  output$plot_geom_area <- renderPlot({
    ggplot(sunspotyear, aes(x = Year, y=Sunspots)) + geom_area(alpha = input$geom_area_element1, 
                                                 color = input$geom_area_element2, 
                                                 fill = input$geom_area_element3,
                                                 linetype = input$geom_area_element4,
                                                 size = input$geom_area_element5) 
  })
  output$geom_area_text <- renderText({
    paste('sunspotyear <- data.frame(
    Year = as.numeric(time(sunspot.year)),
    Sunspots = as.numeric(sunspot.year)
  ) \n \n', 'ggplot(sunspotyear, aes(factor(cyl))) + \n geom_area(alpha = ',input$geom_area_element1,',\n color = "',input$geom_area_element2,'",\n fill = "',input$geom_area_element3,'",\n linetype = "',input$geom_area_element4,'",\n size = ',input$geom_area_element5,')',sep='' )
  })
  
  
  
  
  output$geom_area_table <- renderTable({
    head(sunspotyear)
  })
  
  
  output$plot_geom_density <- renderPlot({
    ggplot(diamonds, aes(carat)) + geom_density(alpha = input$geom_density_element1, 
                                                   
                                                                        color = input$geom_density_element2, 
                                                    fill = input$geom_density_element3,
                                                    linetype = input$geom_density_element4,
                                                    size = input$geom_density_element5, 
                                                    adjust = input$geom_density_element6) 
  })
  output$geom_density_text <- renderText({
    paste('ggplot(diamonds, aes(carat)) + \n geom_density(alpha = ',input$geom_density_element1,',\n color = "',input$geom_density_element2,'",\n fill = "',input$geom_density_element3,'",\n linetype = "',input$geom_density_element4,'",\n size = ',input$geom_density_element5,',\n adjust = ',input$geom_density_element6,')',sep='' )
  })
  
  output$plot_geom_density1 <- renderPlot({
    ggplot(diamonds, aes(carat, fill=cut, color = cut)) + geom_density(alpha = input$geom_density_element1, 
                                                                       
                                                                       linetype = input$geom_density_element4,
                                                                       size = input$geom_density_element5, 
                                                                       adjust = input$geom_density_element6) 
  })
  output$geom_density_text1 <- renderText({
    paste('ggplot(diamonds, aes(carat, fill=cut, color = cut)) + \n geom_density(alpha = ',input$geom_density_element1,'",\n linetype = "',input$geom_density_element4,'",\n size = ',input$geom_density_element5,',\n adjust = ',input$geom_density_element6,')',sep='' )
  })
  
  
  
  
  output$geom_density_table <- renderTable({
    head(diamonds)
  })
  
  output$plot_geom_dotplot <- renderPlot({
    ggplot(mtcars, aes(x=mpg, fill = factor(cyl) ,color= factor(cyl))) + geom_dotplot(alpha = input$geom_dotplot_element1,                                                 
                                                                                   binwidth = input$geom_dotplot_element4,
                                                                                   stackdir = input$geom_dotplot_element5,
                                                                                   method  = input$geom_dotplot_element6,
                                                                                   stackgroups = as.logical(input$geom_dotplot_element7),
                                                                                   binpositions = input$geom_dotplot_element8) 
  })
  output$geom_dotplot_text <- renderText({
    paste('ggplot(mtcars, aes(x = mpg, fill = factor(cyl) ,color= factor(cyl))) + \n geom_dotplot(alpha = ',input$geom_dotplot_element1,',\n binwidth = ',input$geom_dotplot_element4,',\n stackdir = "',input$geom_dotplot_element5,'",\n method  = "',input$geom_dotplot_element6,'",\n stackgroups = ',as.logical(input$geom_dotplot_element7),',\n binpositions = "',input$geom_dotplot_element8,'")', sep='' ) 
  })
  
  output$plot_geom_dotplot1 <- renderPlot({
    ggplot(mtcars, aes(mpg)) + geom_dotplot(alpha = input$geom_dotplot_element1, 
                                            color = input$geom_dotplot_element2, 
                                            fill = input$geom_dotplot_element3,
                                            binwidth = input$geom_dotplot_element4,
                                            stackdir = input$geom_dotplot_element5,
                                            method = input$geom_dotplot_element6
    ) })
  output$geom_dotplot_text1 <- renderText({
    paste('ggplot(mtcars, aes(mpg)) + \n geom_dotplot(alpha = ',input$geom_dotplot_element1,',\n color = "',input$geom_dotplot_element2,'",\n fill = "',input$geom_dotplot_element3,'",\n binwidth = ',input$geom_dotplot_element4,',\n stackdir = "',input$geom_dotplot_element5,'",\n method = "',input$geom_dotplot_element6,'")', sep='' )   })
  
  
  
  
  output$geom_dotplot_table <- renderTable({
    head(mtcars)
  })
  
  output$plot_geom_point <- renderPlot({
    ggplot(mtcars, aes(x=wt,y=mpg)) + geom_point(alpha = input$geom_point_element1, 
                                                  color = input$geom_point_element2, 
                                                  fill = input$geom_point_element3,
                                                  shape = if(!is.na(as.numeric(input$geom_point_element4))) {
                                                    as.numeric(input$geom_point_element4)
                                                  } else {
                                                    input$geom_point_element4
                                                  },
                                                  size = input$geom_point_element5,
                                                  stroke = input$geom_point_element6) 
  })
  output$geom_point_text <- renderText({
    paste('ggplot(mtcars, aes(x = wt,y = mpg)) + \n geom_point(alpha = ',input$geom_point_element1,',\n color = "',input$geom_point_element2,'",\n fill = "',input$geom_point_element3,'",\n shape = ',if(!is.na(as.numeric(input$geom_point_element4))) {
      as.numeric(input$geom_point_element4)
    } else {
      input$geom_point_element4
    },',\n stroke = ',input$geom_point_element5,')',sep='' )
  })
  
  
  
  
  output$geom_point_table <- renderTable({
    head(mtcars)
  })
  
  output$plot_geom_line <- renderPlot({
    ggplot(economics, aes(x = date, y=unemploy)) + geom_line(alpha = input$geom_line_element1, 
                                                             color = input$geom_line_element2, 
                                                             linetype = input$geom_line_element4,
                                                             size = input$geom_line_element5) 
  })
  output$geom_line_text <- renderText({
    paste('ggplot(economics, aes(x = date, y=unemploy))  + \n geom_line(alpha = ',input$geom_line_element1,',\n color = "',input$geom_line_element2,'",\n linetype = "',input$geom_line_element4,'",\n size = ',input$geom_line_element5,')',sep='' )
  })
  
  output$geom_line_table <- renderTable({
    head(economics)
  })
  
  output$plot_geom_line1 <- renderPlot({
    ggplot(economics_long, aes(x = date, y=value01, colour = variable)) + geom_line(alpha = input$geom_line_element1, 
                                                             linetype = input$geom_line_element4,
                                                             size = input$geom_line_element5) 
  })
  output$geom_line_text1 <- renderText({
    paste('ggplot(economics, aes(x = date, y=value01, colour = variable))  + \n geom_line(alpha = ',input$geom_line_element1,',\n linetype = "',input$geom_line_element4,'",\n size = ',input$geom_line_element5,')',sep='' )
  })
  

  
  output$geom_line_table1 <- renderTable({
    head(economics_long)
  })
  
  recent <- economics[economics$date > as.Date("2013-01-01"), ]
  
  output$plot_geom_step <- renderPlot({
    ggplot(recent, aes(x = date, y=unemploy)) + geom_step(alpha = input$geom_step_element1, 
                                                          color = input$geom_step_element2, 
                                                          linetype = input$geom_step_element4,
                                                          size = input$geom_step_element5) 
  })
  output$geom_step_text <- renderText({
    paste('recent <- economics[economics$date > as.Date("2013-01-01"), ]','\n \n ggplot(recent, aes(x = date, y=unemploy))  + \n geom_step(alpha = ',input$geom_step_element1,',\n color = "',input$geom_step_element2,'",\n linetype = "',input$geom_step_element4,'",\n size = ',input$geom_step_element5,')',sep='' )
  })
  
  output$geom_step_table <- renderTable({
    head(recent)
  })
  
  output$plot_geom_path <- renderPlot({
    ggplot(economics, aes(x = unemploy/pop, y=psavert)) + geom_path(alpha = input$geom_path_element1, 
                                                                    color = input$geom_path_element2, 
                                                                    linetype = input$geom_path_element4,
                                                                    size = input$geom_path_element5) 
  })
  output$geom_path_text <- renderText({
    paste('ggplot(economics, aes(x = unemploy/pop, y=psavert))  + \n geom_path(alpha = ',input$geom_path_element1,',\n color = "',input$geom_path_element2,'",\n linetype = "',input$geom_path_element4,'",\n size = ',input$geom_path_element5,')',sep='' )
  })
  
  output$geom_path_table <- renderTable({
    head(economics)
  })
  
  ids <- factor(c("1.1", "2.1", "1.2", "2.2", "1.3", "2.3"))
  
  values <- data.frame(
    id = ids,
    value = c(3, 3.1, 3.1, 3.2, 3.15, 3.5)
  )
  
  positions <- data.frame(
    id = rep(ids, each = 4),
    x = c(2, 1, 1.1, 2.2, 1, 0, 0.3, 1.1, 2.2, 1.1, 1.2, 2.5, 1.1, 0.3,
          0.5, 1.2, 2.5, 1.2, 1.3, 2.7, 1.2, 0.5, 0.6, 1.3),
    y = c(-0.5, 0, 1, 0.5, 0, 0.5, 1.5, 1, 0.5, 1, 2.1, 1.7, 1, 1.5,
          2.2, 2.1, 1.7, 2.1, 3.2, 2.8, 2.1, 2.2, 3.3, 3.2)
  )
  
  datapoly <- merge(values, positions, by=c("id"))
  datapolyHead <- head(datapoly, 4)
  
  
  output$plot_geom_polygon <- renderPlot({
    ggplot(datapoly, aes(x = x, y=y)) + geom_polygon(aes(group=id, fill=value))
  })
  
  output$geom_polygon_text <- renderText({
    paste('ids <- factor(c("1.1", "2.1", "1.2", "2.2", "1.3", "2.3"))
          
          values <- data.frame(
          id = ids,
          value = c(3, 3.1, 3.1, 3.2, 3.15, 3.5)
          )
          
          positions <- data.frame(
          id = rep(ids, each = 4),
          x = c(2, 1, 1.1, 2.2, 1, 0, 0.3, 1.1, 2.2, 1.1, 1.2, 2.5, 1.1, 0.3,
          0.5, 1.2, 2.5, 1.2, 1.3, 2.7, 1.2, 0.5, 0.6, 1.3),
          y = c(-0.5, 0, 1, 0.5, 0, 0.5, 1.5, 1, 0.5, 1, 2.1, 1.7, 1, 1.5,
          2.2, 2.1, 1.7, 2.1, 3.2, 2.8, 2.1, 2.2, 3.3, 3.2)
          )
          
          # Currently we need to manually merge the two together
          datapoly <- merge(values, positions, by=c("id"))
          datapolyHead <- head(datapoly, 4)','\n \n ggplot(datapoly, aes(x = x, y=y))  + \n geom_polygon(aes(group=id, fill=value))',sep='' )
  })
  
  output$geom_polygon_table <- renderTable({
    head(datapoly)
  })
  
  output$plot_geom_polygon1 <- renderPlot({
    ggplot(datapolyHead, aes(x = x, y=y)) + geom_polygon(alpha = input$geom_polygon_element1, 
                                                         color = input$geom_polygon_element2, 
                                                         fill = input$geom_polygon_element3, 
                                                         linetype = input$geom_polygon_element4,
                                                         size = input$geom_polygon_element5) 
  })
  output$geom_polygon_text1 <- renderText({
    paste('ids <- factor(c("1.1", "2.1", "1.2", "2.2", "1.3", "2.3"))
          
          values <- data.frame(
          id = ids,
          value = c(3, 3.1, 3.1, 3.2, 3.15, 3.5)
          )
          
          positions <- data.frame(
          id = rep(ids, each = 4),
          x = c(2, 1, 1.1, 2.2, 1, 0, 0.3, 1.1, 2.2, 1.1, 1.2, 2.5, 1.1, 0.3,
          0.5, 1.2, 2.5, 1.2, 1.3, 2.7, 1.2, 0.5, 0.6, 1.3),
          y = c(-0.5, 0, 1, 0.5, 0, 0.5, 1.5, 1, 0.5, 1, 2.1, 1.7, 1, 1.5,
          2.2, 2.1, 1.7, 2.1, 3.2, 2.8, 2.1, 2.2, 3.3, 3.2)
          )
          
          datapoly <- merge(values, positions, by=c("id"))
          datapolyHead <- head(datapoly, 4)','\n \n ggplot(datapolyHead, aes(x = x, y=y))  + \n geom_polygon(alpha = ',input$geom_polygon_element1,',\n color = "',input$geom_polygon_element2,'",\n fill = "',input$geom_point_element3,'",\n linetype = "',input$geom_polygon_element4,'",\n size = ',input$geom_polygon_element5,')',sep='' )
  })
  
  output$geom_polygon_table1 <- renderTable({
    head(datapolyHead)
  })
  
  output$plot_geom_histogram <- renderPlot({
    ggplot(diamonds, aes(carat)) + geom_histogram(alpha = input$geom_histogram_element1, 
                                                          color = input$geom_histogram_element2, 
                                                          fill = input$geom_histogram_element3,
                                                          linetype = input$geom_histogram_element4,
                                                          size = input$geom_histogram_element5,
                                                          binwidth  = input$geom_histogram_element6) 
  })
  output$geom_histogram_text <- renderText({
    paste('ggplot(diamonds, aes(carat)) + \n geom_histogram(alpha = ',input$geom_histogram_element1,',\n color = "',input$geom_histogram_element2,'",\n fill = "',input$geom_histogram_element3,'",\n linetype = "',input$geom_histogram_element4,'",\n size = ',input$geom_histogram_element5,',\n binwidth = ',input$geom_histogram_element6, ')',sep='' )
    })
  
  
  
  
  output$geom_histogram_table <- renderTable({
    head(diamonds)
  })
  output$plot_geom_freqpoly <- renderPlot({
    ggplot(diamonds, aes(x = price)) + geom_freqpoly(alpha = input$geom_freqpoly_element1, 
                                                     color = input$geom_freqpoly_element2, 
                                                     linetype = input$geom_freqpoly_element4,
                                                     size = input$geom_freqpoly_element5,
                                                     binwidth  = input$geom_freqpoly_element6) 
  })
  output$geom_freqpoly_text <- renderText({
    paste('ggplot(diamonds, aes(x = date, y=unemploy))  + \n geom_freqpoly(alpha = ',input$geom_freqpoly_element1,',\n color = "',input$geom_freqpoly_element2,'",\n linetype = "',input$geom_freqpoly_element4,'",\n size = ',input$geom_freqpoly_element5,',\n binwidth = ',input$geom_freqpoly_element6,')',sep='' )
  })
  
  output$geom_freqpoly_table <- renderTable({
    head(diamonds)
  })
  
  output$plot_geom_freqpoly1 <- renderPlot({
    ggplot(diamonds, aes(x = price, colour = cut)) + geom_freqpoly(alpha = input$geom_freqpoly_element1, 
                                                                        linetype = input$geom_freqpoly_element4,
                                                                        size = input$geom_freqpoly_element5,
                                                                   binwidth  = input$geom_freqpoly_element6) 
  })
  output$geom_freqpoly_text1 <- renderText({
    paste('ggplot(diamonds, aes(x = price,  colour = cut))  + \n geom_freqpoly(alpha = ',input$geom_freqpoly_element1,',\n linetype = "',input$geom_freqpoly_element4,'",\n size = ',input$geom_freqpoly_element5,',\n binwidth = ',input$geom_freqpoly_element6,')',sep='' )
  })
  
  output$geom_freqpoly_table1 <- renderTable({
    head(diamonds)
  })
  
  output$plot_geom_text <- renderPlot({
    ggplot(mtcars, aes(x=wt,y=mpg, label = rownames(mtcars))) + geom_text(alpha = input$geom_text_element1, 
                                                                          color = input$geom_text_element2, 
                                                                          angle = input$geom_text_element3,
                                                                          family = input$geom_text_element4,
                                                                          fontface = input$geom_text_element5,
                                                                          hjust = input$geom_text_element6,
                                                                          lineheight = input$geom_text_element7,
                                                                          size = input$geom_text_element8,
                                                                          vjust = input$geom_text_element9,
                                                                          check_overlap = input$geom_text_element10) 
  })
  output$geom_text_text <- renderText({
    paste('ggplot(mtcars, aes(x=wt,y=mpg, label = rownames(mtcars))) + \n geom_text(alpha = ',input$geom_text_element1,',\n color = "',input$geom_text_element2,'",\n angle = ',input$geom_text_element3,',\n family = "',input$geom_text_element4,'",\n fontface = "',input$geom_text_element5,'",\n hjust = ',input$geom_text_element6,',\n vjust = ',input$geom_text_element9,',\n check_overlap = ',input$geom_text_element10,')', sep='')
  })
  
  
  
  
  output$geom_text_table <- renderTable({
    head(mtcars)
  })
  
  
  
  output$plot_geom_label <- renderPlot({
    ggplot(mtcars, aes(x=wt,y=mpg, label = rownames(mtcars))) + geom_label(alpha = input$geom_label_element1, 
                                                                           color = input$geom_label_element2, 
                                                                           angle = input$geom_label_element3,
                                                                           family = input$geom_label_element4,
                                                                           fontface = input$geom_label_element5,
                                                                           hjust = input$geom_label_element6,
                                                                           lineheight = input$geom_label_element7,
                                                                           size = input$geom_label_element8,
                                                                           vjust = input$geom_label_element9,
                                                                           fill = input$geom_label_element10) 
  })
  output$geom_label_text <- renderText({
    paste('ggplot(mtcars, aes(x=wt,y=mpg, label = rownames(mtcars))) + \n geom_label(alpha = ',input$geom_text_element1,',\n color = "',input$geom_text_element2,'",\n fill = "',input$geom_text_element10,'",\n angle = ',input$geom_text_element3,',\n family = "',input$geom_text_element4,'",\n fontface = "',input$geom_text_element5,'",\n hjust = ',input$geom_text_element6,',\n vjust = ',input$geom_text_element9,')', sep='')
  })
  
  
  
  
  output$geom_label_table <- renderTable({
    head(mtcars)
  })
  output$plot_geom_quantile <- renderPlot({
    ggplot(mpg, aes(displ, 1/hwy)) + geom_quantile(quantiles = c(input$geom_quantile_element7,input$geom_quantile_element8),alpha = input$geom_quantile_element1, 
                                                     color = input$geom_quantile_element2, 
                                                     linetype = input$geom_quantile_element3,
                                                     size = input$geom_quantile_element4,
                                                     method = input$geom_quantile_element5,
                                                     lambda = input$geom_quantile_element6) 
  })
  output$geom_quantile_text <- renderText({
    paste('ggplot(mpg, aes(displ, 1 / hwy)) + \n geom_quantile(alpha = ',input$geom_quantile_element1,',\n color = "',input$geom_quantile_element2,'",\n linetype = "',input$geom_quantile_element3,'",\n size = ',input$geom_quantile_element4,',\n method = "',input$geom_quantile_element5,'",\n lambda = ',input$geom_quantile_element6,')',sep='' )
  })
  
  
  
  
  output$geom_quantile_table <- renderTable({
    head(mpg)
  })
  
  huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
  output$plot_geom_ribbon <- renderPlot({
    ggplot(huron, aes(x = year, y=level)) + geom_ribbon(aes( ymin = level + input$geom_ribbon_element6, ymax = level + input$geom_ribbon_element7),
                                                           alpha = input$geom_ribbon_element1, 
                                                           color = input$geom_ribbon_element2, 
                                                           linetype = input$geom_ribbon_element4,
                                                           size = input$geom_ribbon_element5,
                                                           fill = input$geom_ribbon_element8) 
  })
  output$geom_ribbon_text <- renderText({
    paste('huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
          ggplot(huron, aes(x = year, y=level))  + \n geom_ribbon(aes(ymin = level + ',input$geom_ribbon_element6,', ymax = level + ',input$geom_ribbon_element7 ,'),\n alpha = ',input$geom_ribbon_element1,',\n color = "',input$geom_ribbon_element2,',\n fill = "',input$geom_ribbon_element9,'",\n linetype = "',input$geom_ribbon_element4,'",\n size = ',input$geom_ribbon_element5,')',sep='' )
  })
  
  output$geom_ribbon_table <- renderTable({
    head(huron)
  })
  
  
  dfSegment <- data.frame(x1 = 2.62, x2 = 3.57, y1 = 21.0, y2 = 15.0)
  
  
  output$plot_geom_segment <- renderPlot({
    ggplot(mtcars, aes(wt, mpg)) +
      geom_point() +
      geom_segment(data = dfSegment, aes( x = x1, y = y1, xend = x2, yend = y2),
                   alpha = input$geom_segment_element1, 
                   color = input$geom_segment_element2, 
                   linetype = input$geom_segment_element4,
                   size = input$geom_segment_element5) 
  })
  output$geom_segment_text <- renderText({
    paste('dfSegment <- data.frame(x1 = 2.62, x2 = 3.57, y1 = 21.0, y2 = 15.0) \nggplot(mtcars, aes(wt, mpg)) + geom_point() + \ngeom_segment(data = dfSegment, aes( x = x1, y = y1, xend = x2, yend = y2), \n alpha = ',input$geom_segment_element1,',\n color = "',input$geom_segment_element2,'",\n linetype = "',input$geom_segment_element4,'",\n size = ',input$geom_segment_element5,')',sep='' )
  })
  
  output$geom_segment_table <- renderTable({
    head(dfSegment)
  })

  dfCurve <- data.frame(x1 = 2.62, x2 = 3.57, y1 = 21.0, y2 = 15.0)
  
  
  output$plot_geom_curve <- renderPlot({
    ggplot(mtcars, aes(wt, mpg)) +
      geom_point() +
      geom_curve(data = dfCurve, aes( x = x1, y = y1, xend = x2, yend = y2),
                 alpha = input$geom_curve_element1, 
                 color = input$geom_curve_element2, 
                 linetype = input$geom_curve_element4,
                 size = input$geom_curve_element5,
                 curvature =input$geom_curve_element6,
                 angle = input$geom_curve_element7) 
  })
  output$geom_curve_text <- renderText({
    paste('dfCurve <- data.frame(x1 = 2.62, x2 = 3.57, y1 = 21.0, y2 = 15.0) \nggplot(mtcars, aes(wt, mpg)) + geom_point() + \ngeom_curve(data = dfCurve, aes( x = x1, y = y1, xend = x2, yend = y2), \n alpha = ',input$geom_curve_element1,',\n color = "',input$geom_curve_element2,'",\n linetype = "',input$geom_curve_element4,'",\n size = ',input$geom_curve_element5,',\n curvature = ',input$geom_curve_element6,',\n angle = ',input$geom_curve_element7,')',sep='' )
  })
  
  output$geom_curve_table <- renderTable({
    head(dfCurve)
  })
  
  
  dfRect <- data.frame(
    x = sample(10, 20, replace = TRUE),
    y = sample(10, 20, replace = TRUE)
  )
  
  
  output$plot_geom_rect <- renderPlot({
    ggplot(dfRect, aes(xmin = x, xmax = x + 1, ymin = y, ymax = y + 2))+  geom_rect(alpha = input$geom_rect_element1, 
                                                                                color = input$geom_rect_element2, 
                                                                                fill = input$geom_rect_element3, 
                                                                                linetype = input$geom_rect_element4,
                                                                                size = input$geom_rect_element5) 
  })
  output$geom_rect_text <- renderText({
    paste('dfRect <- data.frame(
  x = sample(10, 20, replace = TRUE),
  y = sample(10, 20, replace = TRUE)
) \n\nggplot(dfRect, aes(xmin = x, xmax = x + 1, ymin = y, ymax = y + 2)) + \ngeom_rect(alpha = ',input$geom_rect_element1,',\n color = "',input$geom_rect_element2,'",\n fill = "',input$geom_point_element3,'",\n linetype = "',input$geom_rect_element4,'",\n size = ',input$geom_rect_element5,')',sep='' )
  })
  
  output$geom_rect_table <- renderTable({
    head(dfRect)
  })
  
  output$plot_geom_rug <- renderPlot({
    ggplot(mtcars, aes(wt, mpg)) +
      geom_point() +
      geom_rug(alpha = input$geom_rug_element1, 
               color = input$geom_rug_element2, 
               linetype = input$geom_rug_element4,
               size = input$geom_rug_element5,
               sides = input$geom_rug_element6) 
  })
  output$geom_rug_text <- renderText({
    paste('ggplot(mtcars, aes(wt, mpg)) + geom_point() + \ngeom_rug(alpha = ',input$geom_rug_element1,',\n color = "',input$geom_rug_element2,'",\n linetype = "',input$geom_rug_element4,'",\n size = ',input$geom_rug_element5,',sides = "',input$geom_rug_element6, '")',sep='' )
  })
    
    output$geom_rug_table <- renderTable({
    head(df)
    })
    
    
    output$plot_geom_violin <- renderPlot({
      ggplot(mtcars, aes(factor(cyl), mpg)) + geom_violin(alpha = input$geom_violin_element1, 
                                                          color = input$geom_violin_element2, 
                                                          fill = input$geom_violin_element3,
                                                          linetype = input$geom_violin_element4,
                                                          size = input$geom_violin_element5,
                                                          width = input$geom_violin_element6,
                                                          scale = input$geom_violin_element7,
                                                          trim = input$geom_violin_element8,
                                                          adjust = input$geom_violin_element9,
                                                          draw_quantiles = input$geom_violin_element10) + if(input$geom_violin_element11) {
                                                             coord_flip()
                                                          } 
    })
    
    output$geom_violin_text <- renderText({
      paste('ggplot(mtcars, aes(factor(cyl), mpg)) + \n geom_violin(alpha = ',input$geom_violin_element1,',\n color = "',input$geom_violin_element2,'",\n fill = "',input$geom_violin_element3,'",\n linetype = "',input$geom_violin_element4,'",\n size = ',input$geom_violin_element5,',\n width = ',input$geom_violin_element6,'\n scale = "',input$geom_violin_element7,'",\n trim = ',input$geom_violin_element8,',\n adjust = ',input$geom_violin_element9,',\n draw_quantiles = ',input$geom_violin_element10,')',if(input$geom_violin_element11) {' \n+ coord_flip()'},')',sep='')   
      
      })
    
    
    output$geom_violin_table <- renderTable({
      head(mtcars)
    })
    
    
    output$plot_geom_bin2d <- renderPlot({
      ggplot(diamonds, aes(x, y)) + xlim(input$geom_bin2d_element3, input$geom_bin2d_element4) + ylim(input$geom_bin2d_element5, input$geom_bin2d_element6) +  geom_bin2d(binwidth=c(input$geom_bin2d_element1,input$geom_bin2d_element2)) 
    })
    output$geom_bin2d_text <- renderText({
      paste('ggplot(diamonds, aes(x, y)) + xlim(',input$geom_bin2d_element3, ',',input$geom_bin2d_element4, ') + ylim(',input$geom_bin2d_element5,',',input$geom_bin2d_element6,') +/n geom_bin2d(binwidth = c(',input$geom_bin2d_element1,',',input$geom_bin2d_element2,'))',sep='')
    })
    
    output$geom_bin2d_table <- renderTable({
      head(diamonds)
    })
    
    output$plot_geom_abline <- renderPlot({
      ggplot(mtcars, aes(wt, mpg)) + geom_point() + geom_abline(intercept = input$geom_abline_element7, 
                                                                slope = input$geom_abline_element8,
                                                                alpha = input$geom_abline_element1, 
                                                                color = input$geom_abline_element2, 
                                                                linetype = input$geom_abline_element4,
                                                                size = input$geom_abline_element5) 
    })
    output$geom_abline_text <- renderText({
      paste('ggplot(mtcars, aes(wt, mpg)) + \n geom_point()  + \n geom_abline(intercept = ',input$geom_abline_element7,',\n slope = ',input$geom_abline_element8,', \n alpha = ',input$geom_abline_element1,',\n color = "',input$geom_abline_element2,'",\n linetype = "',input$geom_abline_element4,'",\n size = ',input$geom_abline_element5,')',sep='' )
    })
    
    output$geom_abline_table <- renderTable({
      head(mtcars)
    })
    
    
    output$plot_geom_vline <- renderPlot({
      ggplot(mtcars, aes(wt, mpg)) + geom_point() + geom_vline(xintercept = input$geom_abline_element9,
                                                               alpha = input$geom_abline_element1, 
                                                               color = input$geom_abline_element2, 
                                                               linetype = input$geom_abline_element4,
                                                               size = input$geom_abline_element5) 
    })
    output$geom_vline_text <- renderText({
      paste('ggplot(mtcars, aes(wt, mpg)) + \n geom_point() +  + \n geom_vline(xintercept = ',input$geom_abline_element9,', \n alpha = ',input$geom_abline_element1,',\n color = "',input$geom_abline_element2,'",\n linetype = "',input$geom_abline_element4,'",\n size = ',input$geom_abline_element5,')',sep='' )
    })
    
    
    
    output$plot_geom_hline <- renderPlot({
      ggplot(mtcars, aes(wt, mpg)) + geom_point() + geom_hline(yintercept = input$geom_abline_element10,
                                                               alpha = input$geom_abline_element1, 
                                                               color = input$geom_abline_element2, 
                                                               linetype = input$geom_abline_element4,
                                                               size = input$geom_abline_element5) 
    })
    output$geom_hline_text <- renderText({
      paste('ggplot(mtcars, aes(wt, mpg)) + \n geom_point()  + \n geom_hline(yintercept = ',input$geom_abline_element10,', \n alpha = ',input$geom_abline_element1,',\n color = "',input$geom_abline_element2,'",\n linetype = "',input$geom_abline_element4,'",\n size = ',input$geom_abline_element5,')',sep='' )
    })
    
    dfSpoke <- expand.grid(x = 1:10, y=1:10)
    dfSpoke$angle <- runif(100, 0, 2*pi)
    dfSpoke$speed <- runif(100, 0, sqrt(0.1 * dfSpoke$x))
    
    
    output$plot_geom_spoke <- renderPlot({
      ggplot(dfSpoke, aes(x, y)) +
        geom_spoke(aes(angle = angle, radius = speed),
      alpha = input$geom_spoke_element1, 
      color = input$geom_spoke_element2, 
      linetype = input$geom_spoke_element4,
      size = input$geom_spoke_element5) 
    })
output$geom_spoke_text <- renderText({
  paste('dfSpoke <- expand.grid(x = 1:10, y=1:10) \ndfSpoke$angle <- runif(100, 0, 2*pi) \ndfSpoke$speed <- runif(100, 0, sqrt(0.1 * dfSpoke$x)) \nggplot(mtcars, aes(wt, mpg)) + \ngeom_spoke(aes(angle = angle, radius = speed)), \n alpha = ',input$geom_spoke_element1,',\n color = "',input$geom_spoke_element2,'",\n linetype = "',input$geom_spoke_element4,'",\n size = ',input$geom_spoke_element5,')',sep='' )
})

output$plot_geom_spoke1 <- renderPlot({
  ggplot(dfSpoke, aes(x, y))+
    geom_spoke(aes(angle = input$geom_spoke_element6), 
               radius = input$geom_spoke_element7,
               alpha = input$geom_spoke_element1, 
               color = input$geom_spoke_element2, 
               linetype = input$geom_spoke_element4,
               size = input$geom_spoke_element5) 
})
output$geom_spoke_text1 <- renderText({
  paste('dfSpoke <- expand.grid(x = 1:10, y=1:10) \ndfSpoke$angle <- runif(100, 0, 2*pi) \ndfSpoke$speed <- runif(100, 0, sqrt(0.1 * dfSpoke$x)) \nggplot(mtcars, aes(wt, mpg)) + \ngeom_spoke(aes(angle = ',input$geom_spoke_element6,'), /n radius = ',input$geom_spoke_element7,', \n alpha = ',input$geom_spoke_element1,',\n color = "',input$geom_spoke_element2,'",\n linetype = "',input$geom_spoke_element4,'",\n size = ',input$geom_spoke_element5,')',sep='' )
})

output$geom_spoke_table <- renderTable({
  head(dfSpoke)
})



output$plot_geom_col <- renderPlot({
  ggplot(BOD, aes(x= factor(Time), y=demand)) + geom_col(alpha = input$geom_col_element1, 
                                                         color = input$geom_col_element2, 
                                                         fill = input$geom_col_element3,
                                                         linetype = input$geom_col_element4,
                                                         size = input$geom_col_element5,
                                                         width = input$geom_col_element6) 
})
output$geom_col_text <- renderText({
  paste('ggplot(BOD, aes(x= factor(Time), y=demand)) + \n geom_col(alpha = ',input$geom_col_element1,',\n color = "',input$geom_col_element2,'",\n fill = "',input$geom_col_element3,'",\n linetype = "',input$geom_col_element4,'",\n size = ',input$geom_col_element5,',\n width = ',input$geom_histogram_element6,')',sep='' )
})



output$geom_col_table <- renderTable({
  head(BOD)
})

output$plot_geom_count <- renderPlot({
  ggplot(mpg, aes(cty, hwy)) + geom_count(alpha = input$geom_count_element1, 
                                          color = input$geom_count_element2, 
                                          fill = input$geom_count_element3,
                                          shape = as.numeric(input$geom_count_element4),
                                          stroke = input$geom_count_element6) 
})
output$geom_count_text <- renderText({
  paste('ggplot(mpg, aes(cty, hwy)) + \n geom_count(alpha = ',input$geom_count_element1,',\n color = "',input$geom_count_element2,'",\n fill = "',input$geom_count_element3,'",\n shape = ',input$geom_count_element4,',\n stroke = ',input$geom_count_element6,')',sep='' )
})




output$geom_count_table <- renderTable({
  head(mtcars)
})

output$plot_geom_density2d <- renderPlot({
  ggplot(geyser, aes(x = duration, y = waiting)) + geom_density2d(color = input$geom_density2d_element2,
                                                                  size = input$geom_density2d_element5) 
})
output$geom_density2d_text <- renderText({
  paste('library("MASS")
        data(geyser)
  \n', 'ggplot(geyser, aes(x = duration, y = waiting)) + \n geom_density2d(color = "',input$geom_density2d_element2,'",\n size = ',input$geom_density2d_element5,')',sep='' )
  })


output$geom_density2d_table <- renderTable({
  head(geyser)
})


output$plot_geom_hex <- renderPlot({
  ggplot(diamonds, aes(carat, price)) +  geom_hex(alpha = input$geom_hex_element1, 
                                                  color = input$geom_hex_element2, 
                                                  fill = input$geom_hex_element3, 
                                                  size = input$geom_hex_element5) 
})
output$geom_hex_text <- renderText({
  paste('ggplot(diamonds, aes(carat, price)) + \ngeom_hex(alpha = ',input$geom_hex_element1,',\n color = "',input$geom_hex_element2,'",\n fill = "',input$geom_point_element3,'",\n size = ',input$geom_hex_element5,')',sep='' )
})



output$plot_geom_hex1 <- renderPlot({
  ggplot(diamonds, aes(carat, price)) +  geom_hex(alpha = input$geom_hex_element1, 
                                                  color = input$geom_hex_element2, 
                                                  size = input$geom_hex_element5) 
})
output$geom_hex_text1 <- renderText({
  paste('ggplot(diamonds, aes(carat, price)) + \ngeom_hex(alpha = ',input$geom_hex_element1,',\n color = "',input$geom_hex_element2,'",\n size = ',input$geom_hex_element5,')',sep='' )
})

output$geom_hex_table <- renderTable({
  head(diamonds)
})

dfError <- data.frame(
  trt = factor(c(1, 1, 2, 2)),
  resp = c(1, 5, 3, 4),
  group = factor(c(1, 2, 1, 2)),
  upper = c(1.1, 5.3, 3.3, 4.2),
  lower = c(0.8, 4.6, 2.4, 3.6)
)



output$plot_geom_linerange <- renderPlot({
  ggplot(dfError, aes(trt, resp, colour = group)) +  geom_linerange(aes(ymin = lower, ymax = upper),alpha = input$geom_error_element1, 
                                                                    color = input$geom_error_element2, 
                                                                    linetype = input$geom_error_element4, 
                                                                    size = input$geom_error_element5) 
})
output$geom_linerange_text <- renderText({
  paste('ggplot(dfError, aes(carat, price)) + linerange_text(aes(ymin = lower, ymax = upper), \nalpha = ',input$geom_error_element1,',\n color = "',input$geom_error_element2,'",\n linetype = "',input$geom_point_element4,'",\n size = ',input$geom_error_element5,')',sep='' )
})

output$plot_geom_crossbar <- renderPlot({
  ggplot(dfError, aes(trt, resp, colour = group)) +  geom_crossbar(aes(ymin = lower, ymax = upper),alpha = input$geom_error_element1, 
                                                                    color = input$geom_error_element2, 
                                                                    linetype = input$geom_error_element4, 
                                                                    size = input$geom_error_element5) 
})
output$geom_crossbar_text <- renderText({
  paste('ggplot(dfError, aes(carat, price)) + geom_crossbar(aes(ymin = lower, ymax = upper), \nalpha = ',input$geom_error_element1,',\n color = "',input$geom_error_element2,'",\n linetype = "',input$geom_point_element4,'",\n size = ',input$geom_error_element5,')',sep='' )
})


output$plot_geom_errorbar <- renderPlot({
  ggplot(dfError, aes(trt, resp, colour = group)) +  geom_errorbar(aes(ymin = lower, ymax = upper),alpha = input$geom_error_element1, 
                                                                    color = input$geom_error_element2, 
                                                                    linetype = input$geom_error_element4, 
                                                                    size = input$geom_error_element5) 
})
output$geom_errorbar_text <- renderText({
  paste('ggplot(dfError, aes(carat, price)) + geom_errorbar(aes(ymin = lower, ymax = upper), \nalpha = ',input$geom_error_element1,',\n color = "',input$geom_error_element2,'",\n linetype = "',input$geom_point_element4,'",\n size = ',input$geom_error_element5,')',sep='' )
})


output$plot_geom_pointrange <- renderPlot({
  ggplot(dfError, aes(trt, resp, colour = group)) +  geom_pointrange(aes(ymin = lower, ymax = upper), alpha = input$geom_error_element1, 
                                                                    color = input$geom_error_element2, 
                                                                    linetype = input$geom_error_element4, 
                                                                    size = input$geom_error_element5) 
})
output$geom_pointrange_text <- renderText({
  paste('ggplot(dfError, aes(carat, price)) + geom_pointrange(aes(ymin = lower, ymax = upper), \nalpha = ',input$geom_error_element1,',\n color = "',input$geom_error_element2,'",\n linetype = "',input$geom_point_element4,'",\n size = ',input$geom_error_element5,')',sep='' )
})


output$geom_error_table <- renderTable({
  head(dfError)
})




output$plot_geom_contour <- renderPlot({
  ggplot(faithfuld, aes(waiting, eruptions, z = density)) + geom_contour(alpha = input$geom_contour_element1, 
                                                                         color = input$geom_contour_element2, 
                                                                         linetype = input$geom_contour_element4,
                                                                         size = input$geom_contour_element5,
                                                                         weight = input$geom_contour_element6) 
})
output$geom_contour_text <- renderText({
  paste('ggplot(faithfuld, aes(waiting, eruptions, z = density)) + \n geom_contour(alpha = ',input$geom_contour_element1,',\n color = "',input$geom_contour_element2,'",\n fill = "',input$geom_contour_element3,'",\n linetype = "',input$geom_contour_element4,'",\n size = ',input$geom_contour_element5,',\n weight = ',input$geom_histogram_element6,')',sep='' )
})



output$geom_contour_table <- renderTable({
  head(faithfuld)
})



output$plot_geom_raster <- renderPlot({
  ggplot(faithfuld, aes(waiting, eruptions)) + geom_raster(aes(fill = density),
                                                           alpha = input$geom_raster_element1,
                                                           interpolate = input$geom_raster_element2
                                                           ) 
})
output$geom_raster_text <- renderText({
  paste('ggplot(faithfuld, aes(waiting, eruptions)) + \n geom_raster(aes(fill = density), \n alpha = ',input$geom_raster_element1,',\n interpolate = "',input$geom_raster_element2,')',sep='' )
})



output$geom_raster_table <- renderTable({
  head(faithfuld)
})


dfTile <- data.frame(
  x = rep(c(2, 5, 7, 9, 12), 2),
  y = rep(c(1, 2), each = 5),
  z = factor(rep(1:5, each = 2)),
  w = rep(diff(c(0, 4, 6, 8, 10, 14)), 2)
)


dfTile <- data.frame(
  x = rep(c(2, 5, 7, 9, 12), 2),
  y = rep(c(1, 2), each = 5),
  z = factor(rep(1:5, each = 2)),
  w = rep(diff(c(0, 4, 6, 8, 10, 14)), 2)
)

output$plot_geom_tile <- renderPlot({
  ggplot(dfTile, aes(x, y)) + geom_tile(aes(fill = z),
                                        alpha = input$geom_tile_element1, 
                                        color = input$geom_tile_element2, 
                                        linetype = input$geom_tile_element4,
                                        size = input$geom_tile_element5) 
})
output$geom_tile_text <- renderText({
  paste('ggplot(dfTile, aes(x, y)) + \n geom_tile(aes(fill = z), \n alpha = ',input$geom_tile_element1,',\n color = "',input$geom_tile_element2,'",\n fill = "',input$geom_tile_element3,'",\n linetype = "',input$geom_tile_element4,'",\n size = ',input$geom_tile_element5,')',sep='' )
})



output$geom_tile_table <- renderTable({
  head(dfTile)
})



}




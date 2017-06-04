shinyUI(
  
  navbarPage(header = tags$head(includeScript("gtm_head.js")),
             id = 'main',
             title = "ggplot2 explorer",
             tabPanel('home', fluidRow(title = '', width=12,  align = "center",
                                     
                                       tags$body(tags$p(style = "padding: 30px; width:822px",align = 'left', "Hi there,", tags$br(), tags$br(),  'I created this website to help all R learners to undestand how to plot beautiful/useful charts using the most popular vizualization package ',  tags$a('ggplot2.',target="_blank", href='http://ggplot2.org/'), "It won't teach you how to write a code, but definitely will show you how ggplot2 geoms look like, and how manipulating their arguments changes visualization. Few scrolls below you can find list of covered geoms and example of what they plot.",tags$br(),tags$br(), 'If you want to learn more about me check out my ', tags$a('Twitter',target="_blank" ,href='https://twitter.com/aliendeg'), ' or ', tags$a('Linkedin.',target="_blank", href='https://uk.linkedin.com/in/pawelkapuscinski'), ' If you have any questions, suggestions, inquiries, ideas how to improve the app or superinteresting data project, you can mail me pawel [at] databall.co.',
                                                        tags$br(), 
                                                        'And thank you to all good people who helped me to build this app', tags$a('Piotr,',target="_blank" ,href='https://twitter.com/dizkredit'), tags$a('Patrick,',target="_blank" ,href='https://twitter.com/dnuggetspl'), tags$a('Donal' ,target="_blank",href='https://twitter.com/DonalPhipps'), 'and', tags$a('Tim.' ,target="_blank",href='https://twitter.com/tgwilson'))),

                                       
                                       tags$table(
              
               
               tags$tr(tags$td( colspan = 3 ,align = "center" ,tags$table(tags$tr(tags$td(tags$span( style = "font-size:200%", 'Graphical primitves')))) )),
               tags$tr(tags$td(tags$tr(tags$td(actionLink("link_to_tabpanel_geom_ribbon",tags$img(src = 'geom_ribbon.png'))), tags$td(actionLink("link_to_tabpanel_geom_polygon",tags$img(src = 'geom_polygon.png'))),tags$td(actionLink("link_to_tabpanel_geom_segment",tags$img(src = 'geom_segment.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_ribbon')), tags$td(align = "center",tags$span('geom_polygon')),tags$td(align = "center",tags$span('geom_segment'))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_abline",tags$img(src = 'geom_abline.png'))) ,  tags$td(actionLink("link_to_tabpanel_geom_spoke",tags$img(src = 'geom_spoke.png'))), tags$td(actionLink("link_to_tabpanel_geom_rect",tags$img(src = 'geom_rect.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_abline')) , tags$td(align = "center",tags$span('geom_spoke')), tags$td(align = "center",tags$span('geom_rect'))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_path",tags$img(src = 'geom_path.png'))), tags$td(actionLink("link_to_tabpanel_geom_curve",tags$img(src = 'geom_curve.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_path')), tags$td(align = "center",tags$span('geom_curve'))) )),
               tags$tr(tags$td( colspan = 3 ,align = "center" ,tags$table(tags$tr(tags$td(tags$span( style = "font-size:200%", 'One variable')))) )),
               tags$tr(tags$td(tags$tr(tags$td(actionLink("link_to_tabpanel_geom_area",tags$img(src = 'geom_area.png'))), tags$td(actionLink("link_to_tabpanel_geom_freqpoly",tags$img(src = 'geom_freqpoly.png'))) , tags$td(actionLink("link_to_tabpanel_geom_density",tags$img(src = 'geom_density.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_area')), tags$td(align = "center",tags$span('geom_freqpoly')) ,tags$td(align = "center",tags$span('geom_density')) ) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_histogram",tags$img(src = 'geom_histogram.png'))),tags$td(actionLink("link_to_tabpanel_geom_dotplot",tags$img(src = 'geom_dotplot.png'))), tags$td(actionLink("link_to_tabpanel_geom_bar",tags$img(src = 'geom_bar.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_histogram')),tags$td(align = "center",tags$span('geom_dotplot')), tags$td(align = "center",tags$span('geom_bar'))) )),
               tags$tr(tags$td( colspan = 3 ,align = "center" ,tags$table(tags$tr(tags$td(tags$span( style = "font-size:200%", 'Two variables')))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_label",tags$img(src = 'geom_label.png'))), tags$td(actionLink("link_to_tabpanel_geom_count",tags$img(src = 'geom_count.png'))),tags$td(actionLink("link_to_tabpanel_geom_point",tags$img(src = 'geom_point.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_label')), tags$td(align = "center",tags$span('geom_count')),tags$td(align = "center",tags$span('geom_point'))) )),
               tags$tr(tags$td( tags$tr( tags$td(actionLink("link_to_tabpanel_geom_bin2d",tags$img(src = 'geom_bin2d.png'))),tags$td(actionLink("link_to_tabpanel_geom_quantile",tags$img(src = 'geom_quantile.png'))), tags$td(actionLink("link_to_tabpanel_geom_density2d",tags$img(src = 'geom_density2d.png')))),
                                tags$tr( tags$td(align = "center",tags$span('geom_bin2d')),tags$td(align = "center",tags$span('geom_quantile')), tags$td(align = "center",tags$span('geom_density2d'))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_rug",tags$img(src = 'geom_rug.png'))), tags$td(actionLink("link_to_tabpanel_geom_hex",tags$img(src = 'geom_hex.png'))),tags$td(actionLink("link_to_tabpanel_geom_text",tags$img(src = 'geom_text.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_rug')), tags$td(align = "center",tags$span('geom_hex')),tags$td(align = "center",tags$span('geom_text'))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_line",tags$img(src = 'geom_line.png'))),tags$td(actionLink("link_to_tabpanel_geom_col",tags$img(src = 'geom_col.png'))), tags$td(actionLink("link_to_tabpanel_geom_step",tags$img(src = 'geom_step.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_line')),tags$td(align = "center",tags$span('geom_col')), tags$td(align = "center",tags$span('geom_step'))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_violin",tags$img(src = 'geom_violin.png'))), tags$td(actionLink("link_to_tabpanel_geom_error",tags$img(src = 'geom_error.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_violin')), tags$td(align = "center",tags$span('geom_error'))))),
               tags$tr(tags$td( colspan = 3 ,align = "center" ,tags$table(tags$tr(tags$td(tags$span( style = "font-size:200%", 'Three variables')))) )),
               tags$tr(tags$td( tags$tr(tags$td(actionLink("link_to_tabpanel_geom_contour",tags$img(src = 'geom_contour.png'))), tags$td(actionLink("link_to_tabpanel_geom_tile",tags$img(src = 'geom_tile.png'))),tags$td(actionLink("link_to_tabpanel_geom_raster",tags$img(src = 'geom_raster.png')))),
                                tags$tr(tags$td(align = "center",tags$span('geom_contour')), tags$td(align = "center",tags$span('geom_tile')),tags$td(align = "center",tags$span('geom_raster'))) ))
               
               
               
               
               
             )
                                                                                          
             )),
             navbarMenu("Graphical Primitives",
                        tabPanel('geom_curve' ,
                                 
                                 value = 'geom_curve',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_curve_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_curve_element2', label = 'color', choices = c('darkblue','grey70', 'red','#add8e6','green','blue','yellow'),selected = 'grey70'),
                                                            selectInput('geom_curve_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_curve_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_curve_element6', label='curvature', min = -5 , max = 5, value = 0.5, step = 0.5),
                                                            sliderInput('geom_curve_element7', label='angle', min = 0 , max = 180, value = 50, step = 10),
                                                            checkboxInput(inputId = "geom_curve_table",label = strong("Show data"),value = TRUE),
                                                            checkboxInput(inputId = "geom_curve_text",label = strong("Show ggplot function"),value = FALSE)
                                                            
                                               ),
                                               
                                               mainPanel("geom_curve", width = 8,
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_curve'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_curve_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_curve_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_curve_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_curve_text", container = pre)
                                                           )
                                                         )
                                                         
                                                         
                                                         
                                               )
                                 )),
                        tabPanel('geom_path' ,
                                 
                                 value = 'geom_path',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            sliderInput('geom_path_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_path_element2', label = 'color', choices = c('darkblue','grey35','red','#add8e6','green','blue','yellow'),selected = 'grey35'),
                                                            selectInput('geom_path_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_path_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_path_table",
                                                                          label = strong("Show data"),
                                                                          value = FALSE),
                                                            
                                                            checkboxInput(inputId = "geom_path_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_path", width = 8,                                 
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_path'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_path_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_path_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_path_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_path_text", container = pre)
                                                           )
                                                         )
                                                         
                                               )
                                 )),
                        tabPanel('geom_polygon' ,
                                 
                                 value = 'geom_polygon',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            radioButtons("geom_polygon_element0", "Type",
                                                                         c("Group of polygons" = "def",
                                                                           "One polygon" = "mod")),
                                                            
                                                            conditionalPanel(
                                                              condition = "input.geom_polygon_element0 == 'mod'",
                                                              sliderInput('geom_polygon_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                              selectInput('geom_polygon_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                'red','#add8e6',
                                                                                                                                'green',
                                                                                                                                'blue',
                                                                                                                                'yellow'),selected = 'grey35'),
                                                              selectInput('geom_polygon_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                              
                                                              selectInput('geom_polygon_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                   "longdash","twodash"),selected = 'solid'),
                                                              sliderInput('geom_polygon_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5)),
                                                            
                                                            checkboxInput(inputId = "geom_polygon_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_polygon_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_polygon", width = 8,   
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_polygon_element0 == 'def'",                              
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_polygon'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_polygon_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_polygon_table")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_polygon_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_polygon_text", container = pre)
                                                             )
                                                           )
                                                           
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_polygon_element0 == 'mod'",                              
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_polygon1'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_polygon_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_polygon_table1")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_polygon_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_polygon_text1", container = pre)
                                                             )
                                                           )
                                                           
                                                         ))
                                 )),
                        
                        tabPanel('geom_rect' ,
                                 
                                 value = 'geom_rect',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            sliderInput('geom_rect_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_rect_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                           'red','#add8e6',
                                                                                                                           'green',
                                                                                                                           'blue',
                                                                                                                           'yellow'),selected = 'grey35'),
                                                            selectInput('geom_rect_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                            
                                                            selectInput('geom_rect_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                              "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_rect_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_rect_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_rect_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_rect", width = 8,   
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_rect'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_rect_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_rect_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_rect_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_rect_text", container = pre)
                                                           )
                                                         )
                                                         
                                               )
                                 )),
                        
                        tabPanel('geom_ribbon' ,
                                 
                                 value = 'geom_ribbon',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_ribbon_element7', label='ymin', min = -5 , max = 0, value = -1, step = 0.5),
                                                            sliderInput('geom_ribbon_element6', label='ymax', min = 0 , max = 5, value = 1, step = 0.5),                                  
                                                            sliderInput('geom_ribbon_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_ribbon_element2', label = 'color', choices = c('darkblue','grey70', 
                                                                                                                             'red','#add8e6',
                                                                                                                             'green',
                                                                                                                             'blue',
                                                                                                                             'yellow'),selected = 'grey70'),
                                                            selectInput('geom_ribbon_element8', label = 'fill', choices = c('white','#138D75','grey','black','orange','grey70'),selected = 'grey70'),
                                                            
                                                            selectInput('geom_ribbon_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_ribbon_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_ribbon_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_ribbon_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_ribbon", width = 8,
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_ribbon'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_ribbon_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_ribbon_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_ribbon_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_ribbon_text", container = pre)
                                                           )
                                                         )
                                                         
                                                         
                                                         
                                               )
                                 )),
                        
                        tabPanel('geom_(ab/v/h)line' ,
                                 
                                 value = 'geom_abline',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            selectInput('geom_abline_element0', label = 'geom', choices = c('abline','vline', 'hline'), selected = 'abline'),
                                                            
                                                            conditionalPanel(
                                                              condition = "input.geom_abline_element0 == 'abline'",
                                                              sliderInput('geom_abline_element7', label='intercept', min = 5 , max = 30, value = 20, step = 2),
                                                              sliderInput('geom_abline_element8', label='slope', min = -5 , max = 5, value = 0, step = 1)
                                                            ),
                                                            
                                                            conditionalPanel(
                                                              condition = "input.geom_abline_element0 == 'vline'",
                                                              sliderInput('geom_abline_element9', label='xintercept', min = 1 , max = 5, value = 1, step = 1)
                                                            ),
                                                            
                                                            conditionalPanel(
                                                              condition = "input.geom_abline_element0 == 'hline'",
                                                              sliderInput('geom_abline_element10', label='yintercept', min = 10 , max = 35, value = 10, step = 5)),
                                                            
                                                            sliderInput('geom_abline_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            
                                                            selectInput('geom_abline_element2', label = 'color', choices = c('darkblue','grey35', 'red','#add8e6','green','blue','yellow'),selected = 'grey35'),
                                                            selectInput('geom_abline_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_abline_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_abline_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_abline_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_abline", width = 8,
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_abline_element0 == 'abline'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_abline'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_abline_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_abline_text", container = pre)
                                                             )
                                                           )
                                                         ),conditionalPanel(
                                                           condition = "input.geom_abline_element0 == 'vline'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_vline'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_abline_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_vline_text", container = pre)
                                                             )
                                                           )
                                                         ),conditionalPanel(
                                                           condition = "input.geom_abline_element0 == 'hline'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_hline'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_abline_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_hline_text", container = pre)
                                                             )
                                                           )
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_abline_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_abline_table")
                                                           ))
                                                         
                                                         
                                               )
                                 )),
                        tabPanel('geom_segment' ,
                                 
                                 value = 'geom_segment',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            sliderInput('geom_segment_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_segment_element2', label = 'color', choices = c('darkblue','grey70', 
                                                                                                                              'red','#add8e6',
                                                                                                                              'green',
                                                                                                                              'blue',
                                                                                                                              'yellow'),selected = 'grey70'),
                                                            selectInput('geom_segment_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                 "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_segment_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_segment_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_segment_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_segment", width = 8,
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_segment'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_segment_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_segment_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_segment_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_segment_text", container = pre)
                                                           )
                                                         )
                                                         
                                                         
                                                         
                                               )
                                 )),
                        tabPanel('geom_spoke' ,
                                 
                                 value = 'geom_spoke',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            checkboxInput(inputId = "geom_spoke_element0",
                                                                          label = strong("Modify angle and radius?"),
                                                                          value = FALSE),
                                                            
                                                            
                                                            conditionalPanel(
                                                              condition = "input.geom_spoke_element0 == true",
                                                              sliderInput('geom_spoke_element6', label='angle', min = 0 , max = 180, value = 1, step = 0.1),
                                                              sliderInput('geom_spoke_element7', label='radius', min = 0 , max = 3, value = 1, step = 0.2)),
                                                            sliderInput('geom_spoke_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_spoke_element2', label = 'color', choices = c('darkblue','grey70', 
                                                                                                                            'red','#add8e6',
                                                                                                                            'green',
                                                                                                                            'blue',
                                                                                                                            'yellow'),selected = 'grey70'),
                                                            selectInput('geom_spoke_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                               "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_spoke_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_spoke_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_spoke_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_spoke", width = 8,
                                                         conditionalPanel(
                                                           condition = "input.geom_spoke_element0 == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_spoke1'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_spoke_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_spoke_text1", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_spoke_element0 == false",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_spoke'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_spoke_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_spoke_text", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_spoke_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_spoke_table")
                                                           ))
                                                         
                                                         
                                               )
                                 ))),
             
             navbarMenu("One variable",tabPanel('geom_area' ,
                                                
                                                value = 'geom_area',   sidebarLayout(position = "left",
                                                              sidebarPanel("Aesthetics",width = 4,
                                                                           sliderInput('geom_area_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                                           selectInput('geom_area_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                          'red','#add8e6',
                                                                                                                                          'green',
                                                                                                                                          'blue',
                                                                                                                                          'yellow'),selected = 'grey35'),
                                                                           selectInput('geom_area_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                                           selectInput('geom_area_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                             "longdash","twodash"),selected = 'solid'),
                                                                           sliderInput('geom_area_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                                           
                                                                           checkboxInput(inputId = "geom_area_table",
                                                                                         label = strong("Show data"),
                                                                                         value = TRUE),
                                                                           
                                                                           checkboxInput(inputId = "geom_area_text",
                                                                                         label = strong("Show ggplot function"),
                                                                                         value = FALSE)
                                                                           
                                                              ),
                                                              mainPanel("geom_area", width = 8,
                                                                        fluidRow(style = "padding-right: 10px;",
                                                                                 splitLayout(plotOutput('plot_geom_area'))
                                                                        ),
                                                                        conditionalPanel(
                                                                          condition = "input.geom_area_table == true",
                                                                          fluidRow(style = "padding-right: 10px;",
                                                                                   tableOutput("geom_area_table")
                                                                          )),
                                                                        
                                                                        conditionalPanel(
                                                                          condition = "input.geom_area_text == true",
                                                                          fluidRow(style = "padding-right: 10px;",
                                                                                   textOutput("geom_area_text", container = pre)
                                                                          )
                                                                        )
                                                              )
                                                )),
                        tabPanel('geom_density',  value = 'geom_density',   sidebarLayout(position = "left",
                                                                sidebarPanel("Aesthetics",width = 4,
                                                                             
                                                                             radioButtons("geom_density_element0", "Colors",
                                                                                          c("based on cut variable" = "def",
                                                                                            "modifiable" = "mod")),
                                                                             sliderInput('geom_density_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                                             conditionalPanel(
                                                                               condition = "input.geom_density_element0 == 'mod'",
                                                                               selectInput('geom_density_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                                 'red','#add8e6',
                                                                                                                                                 'green',
                                                                                                                                                 'blue',
                                                                                                                                                 'yellow'),selected = 'grey35'),
                                                                               selectInput('geom_density_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35')
                                                                             ),
                                                                             
                                                                             selectInput('geom_density_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                                  "longdash","twodash"),selected = 'solid'),
                                                                             sliderInput('geom_density_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                                             sliderInput('geom_density_element6', label='adjust', min = 0.1 , max = 5, value = 0.5, step = 0.5),
                                                                             
                                                                             checkboxInput(inputId = "geom_density_table",
                                                                                           label = strong("Show data"),
                                                                                           value = TRUE),
                                                                             
                                                                             checkboxInput(inputId = "geom_density_text",
                                                                                           label = strong("Show ggplot function"),
                                                                                           value = FALSE)
                                                                             
                                                                ),
                                                                mainPanel("geom_density", width = 8,
                                                                          conditionalPanel(
                                                                            condition = "input.geom_density_element0 == 'mod'",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     splitLayout(plotOutput('plot_geom_density'))
                                                                            ),
                                                                            conditionalPanel(
                                                                              condition = "input.geom_density_text == true",
                                                                              fluidRow(style = "padding-right: 20px;",
                                                                                       textOutput("geom_density_text", container = pre)
                                                                              )
                                                                            )),
                                                                          conditionalPanel(
                                                                            condition = "input.geom_density_element0 == 'def'",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     splitLayout(plotOutput('plot_geom_density1'))
                                                                            ), conditionalPanel(
                                                                              condition = "input.geom_density_text == true",
                                                                              fluidRow(style = "padding-right: 20px;",
                                                                                       textOutput("geom_density_text1", container = pre)
                                                                              )
                                                                            )
                                                                          ),
                                                                          
                                                                          
                                                                          conditionalPanel(
                                                                            condition = "input.geom_density_table == true",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     tableOutput("geom_density_table")
                                                                            ))
                                                                )
                        ) ),
                        
                        tabPanel('geom_dotplot',  value = 'geom_dotplot',   sidebarLayout(position = "left",
                                                                sidebarPanel("Aesthetics",width = 4,
                                                                             
                                                                             radioButtons("geom_dotplot_element0", "Colors",
                                                                                          c("based on cut variable" = "def",
                                                                                            "modifiable" = "mod")),
                                                                             sliderInput('geom_dotplot_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                                             conditionalPanel(
                                                                               condition = "input.geom_dotplot_element0 == 'mod'",
                                                                               selectInput('geom_dotplot_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                                 'red','#add8e6',
                                                                                                                                                 'green',
                                                                                                                                                 'blue',
                                                                                                                                                 'yellow'),selected = 'grey35'),
                                                                               selectInput('geom_dotplot_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35')
                                                                             ),
                                                                             
                                                                             sliderInput('geom_dotplot_element4', label = 'binwidth', min = 0.1 , max = 2, value = 0.5, step = 0.5),
                                                                             selectInput('geom_dotplot_element5', label='stackdir', choices = c("up" , "down", "center", "centerwhole"),selected = 'up'),
                                                                             selectInput('geom_dotplot_element6', label='method', choices = c('dotdensity','histodot'),selected = 'dotdensity'),
                                                                             conditionalPanel(
                                                                               condition = "input.geom_dotplot_element0 == 'def'",
                                                                               selectInput('geom_dotplot_element7', label='stackgroups', choices = c('TRUE','FALSE'),selected = 'TRUE'),
                                                                               selectInput('geom_dotplot_element8', label='binpositions', choices = c('bygroup', 'all'),selected = 'all')
                                                                             ),
                                                                             
                                                                             checkboxInput(inputId = "geom_dotplot_table",
                                                                                           label = strong("Show data"),
                                                                                           value = TRUE),
                                                                             
                                                                             checkboxInput(inputId = "geom_dotplot_text",
                                                                                           label = strong("Show ggplot function"),
                                                                                           value = FALSE)
                                                                             
                                                                ),
                                                                mainPanel("geom_dotplot", width = 8,
                                                                          conditionalPanel(
                                                                            condition = "input.geom_dotplot_element0 == 'mod'",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     splitLayout(plotOutput('plot_geom_dotplot1'))
                                                                            ),
                                                                            conditionalPanel(
                                                                              condition = "input.geom_dotplot_text == true",
                                                                              fluidRow(style = "padding-right: 20px;",
                                                                                       textOutput("geom_dotplot_text1", container = pre)
                                                                              )
                                                                            )),
                                                                          conditionalPanel(
                                                                            condition = "input.geom_dotplot_element0 == 'def'",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     splitLayout(plotOutput('plot_geom_dotplot'))
                                                                            ), conditionalPanel(
                                                                              condition = "input.geom_dotplot_text == true",
                                                                              fluidRow(style = "padding-right: 20px;",
                                                                                       textOutput("geom_dotplot_text", container = pre)
                                                                              )
                                                                            )
                                                                          ),
                                                                          
                                                                          
                                                                          conditionalPanel(
                                                                            condition = "input.geom_dotplot_table == true",
                                                                            fluidRow(style = "padding-right: 10px;",
                                                                                     tableOutput("geom_dotplot_table")
                                                                            ))
                                                                )
                        ) ),
                        
                        tabPanel('geom_freqpoly' ,
                                 
                                 value = 'geom_freqpoly',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            radioButtons("geom_freqpoly_element0", "Colors",
                                                                         c("Based on cut" = "def",
                                                                           "modifable" = "mod")),
                                                            
                                                            sliderInput('geom_freqpoly_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            conditionalPanel(
                                                              condition = "input.geom_freqpoly_element0 == 'mod'",
                                                              selectInput('geom_freqpoly_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                 'red','#add8e6',
                                                                                                                                 'green',
                                                                                                                                 'blue',
                                                                                                                                 'yellow'),selected = 'grey35')),
                                                            selectInput('geom_freqpoly_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                  "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_freqpoly_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_freqpoly_element6', label='binwidth', min = 1 , max = 30, value = 0.5, step = 5),
                                                            
                                                            checkboxInput(inputId = "geom_freqpoly_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_freqpoly_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_freqpoly", width = 8,
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_freqpoly_element0 == 'mod'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_freqpoly'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_freqpoly_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_freqpoly_table")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_freqpoly_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_freqpoly_text", container = pre)
                                                             )
                                                           )
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_freqpoly_element0 == 'def'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_freqpoly1'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_freqpoly_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_freqpoly_table1")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_freqpoly_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_freqpoly_text1", container = pre)
                                                             )
                                                           )
                                                         )
                                               )
                                 )),
                        
                        tabPanel('geom_histogram',
                                 
                                 value = 'geom_histogram',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_histogram_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_histogram_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                'red','#add8e6',
                                                                                                                                'green',
                                                                                                                                'blue',
                                                                                                                                'yellow'),selected = 'grey35'),
                                                            selectInput('geom_histogram_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_histogram_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                   "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_histogram_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_histogram_element6', label='binwidth', min = 0.1 , max = 1.5, value = 0.5, step = 0.1),
                                                            
                                                            checkboxInput(inputId = "geom_histogram_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_histogram_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_histogram", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_histogram'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_histogram_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_histogram_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_histogram_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_histogram_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )),
                        tabPanel('geom_bar',
                                 
                                 value = 'geom_bar',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            radioButtons("geom_bar_element0", "y variable",
                                                                         c("count" = "mod",
                                                                           "identity" = "def")),
                                                            sliderInput('geom_bar_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_bar_element2', label = 'color', choices = c('grey35','darkblue', 
                                                                                                                          'red','#add8e6',
                                                                                                                          'green',
                                                                                                                          'blue',
                                                                                                                          'yellow'),selected = 'grey35'),
                                                            selectInput('geom_bar_element3', label = 'fill', choices = c('white','#138D75','grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_bar_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                             "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_bar_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_bar_element6', label='width', min = 0.1 , max = 1.5, value = 0.5, step = 0.1),
                                                            
                                                            checkboxInput(inputId = "geom_bar_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_bar_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_bar", width = 8,
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_bar_element0 == 'mod'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_bar'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_bar_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_bar_table")
                                                             )),
                                                           conditionalPanel(
                                                             condition = "input.geom_bar_text == true",
                                                             fluidRow(style = "padding-right: 20px;",
                                                                      textOutput("geom_bar_text", container = pre)))),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_bar_element0 == 'def'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_bar1'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_bar_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_bar_table1")
                                                             )),
                                                           conditionalPanel(
                                                             condition = "input.geom_bar_text == true",
                                                             fluidRow(style = "padding-right: 20px;",
                                                                      textOutput("geom_bar_text1", container = pre)
                                                             )
                                                           ))
                                                         
                                                         
                                                         
                                               )
                                               
                                 ))), 
             navbarMenu("Two Variables",
                        tabPanel('geom_label',
                                 
                                 value = 'geom_label',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_label_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_label_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                            'red','#add8e6',
                                                                                                                            'green',
                                                                                                                            'blue',
                                                                                                                            'yellow'),selected = 'grey35'),
                                                            selectInput('geom_label_element10', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'white'),
                                                            sliderInput('geom_label_element3', label = 'angle',  min = 0 , max = 360, value = 0, step = 45),
                                                            selectInput('geom_label_element4', label = 'family', choices = c("sans", "serif", "mono"),selected = "mono"),
                                                            selectInput('geom_label_element5', label = 'fontface', choices = c("italic", "bold", "bold.italic", "plain"),selected = "plain"),
                                                            sliderInput('geom_label_element9', label = 'vjust', min = 0 , max = 1, value = 0.5, step = 0.1),
                                                            sliderInput('geom_label_element6', label = 'hjust', min = 0 , max = 1, value = 0.5, step = 0.1),
                                                            sliderInput('geom_label_element7', label = 'lineheight', min = 0 , max = 3, value = 1.2, step = 0.2),
                                                            sliderInput('geom_label_element8', label = 'size', min = 0.1 , max = 5, value = 3, step = 0.5),
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_label_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_label_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_label", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_label'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_label_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_label_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_label_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_label_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )),
                        
                        tabPanel('geom_point',
                                 
                                 value = 'geom_point',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_point_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_point_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                            'red','#add8e6',
                                                                                                                            'green',
                                                                                                                            'blue',
                                                                                                                            'yellow'),selected = 'grey35'),
                                                            selectInput('geom_point_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_point_element4', label = 'shape', choices = c(0:25,'*','.','o','O','+','-','|','%','#','@','A','$'),selected = 1),
                                                            sliderInput('geom_point_element5', label='size', min = 0.1 , max = 5, value = 0.5, step = 0.5),
                                                            sliderInput('geom_point_element6', label='stroke', min = 1 , max = 5, value = 0.5, step = 1),
                                                            
                                                            checkboxInput(inputId = "geom_point_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_point_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_point", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_point'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_point_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_point_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_point_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_point_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )
                                 
                        ),
                        tabPanel('geom_quantile',
                                 
                                 value = 'geom_quantile',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_quantile_element7', label='quantile1', min = 0 , max = 1, value = 0.1, step = 0.05),
                                                            sliderInput('geom_quantile_element8', label='quantile2', min = 0 , max = 1, value = 0.9, step = 0.05),
                                                            sliderInput('geom_quantile_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            
                                                            selectInput('geom_quantile_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                               'red','#add8e6',
                                                                                                                               'green',
                                                                                                                               'blue',
                                                                                                                               'yellow'),selected = 'grey35'),
                                                            selectInput('geom_quantile_element3', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                  "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_quantile_element4', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            selectInput('geom_quantile_element5', label='method', choices = c("rq", "rqss"),selected = 'rq'),
                                                            sliderInput('geom_quantile_element6', label='lambda', min = 0.1 , max = 1, value = 0.1, step = 0.1),
                                                            
                                                            checkboxInput(inputId = "geom_quantile_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_quantile_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_quantile", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_quantile'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_quantile_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_quantile_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_quantile_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_quantile_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )
                                 
                        ),
                        tabPanel('geom_rug' ,
                                 
                                 value = 'geom_rug',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            sliderInput('geom_rug_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_rug_element2', label = 'color', choices = c('darkblue','grey70', 
                                                                                                                          'red','#add8e6',
                                                                                                                          'green',
                                                                                                                          'blue',
                                                                                                                          'yellow'),selected = 'grey70'),
                                                            selectInput('geom_rug_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                             "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_rug_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            selectInput('geom_rug_element6', label = 'sides', choices = c("b", "t", "l","r", "trbl",'bt','lr','tr'),selected = 'trbl'),
                                                            
                                                            
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_rug_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_rug_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_rug", width = 8,
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_rug'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_rug_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_rug_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_rug_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_rug_text", container = pre)
                                                           )
                                                         )
                                                         
                                                         
                                                         
                                               )
                                 )),
                        tabPanel('geom_text',
                                 
                                 value = 'geom_text',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            checkboxInput(inputId = "geom_text_element10",
                                                                          label = strong("check_overlap"),
                                                                          value = FALSE),
                                                            sliderInput('geom_text_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_text_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                           'red','#add8e6',
                                                                                                                           'green',
                                                                                                                           'blue',
                                                                                                                           'yellow'),selected = 'grey35'),
                                                            sliderInput('geom_text_element3', label = 'angle',  min = 0 , max = 360, value = 0, step = 45),
                                                            selectInput('geom_text_element4', label = 'family', choices = c("sans", "serif", "mono"),selected = "mono"),
                                                            selectInput('geom_text_element5', label = 'fontface', choices = c("italic", "bold", "bold.italic", "plain"),selected = "plain"),
                                                            sliderInput('geom_text_element9', label = 'vjust', min = 0 , max = 1, value = 0.5, step = 0.1),
                                                            sliderInput('geom_text_element6', label = 'hjust', min = 0 , max = 1, value = 0.5, step = 0.1),
                                                            sliderInput('geom_text_element7', label = 'lineheight', min = 0 , max = 3, value = 1.2, step = 0.2),
                                                            sliderInput('geom_text_element8', label = 'size', min = 0.1 , max = 5, value = 3, step = 0.5),
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_text_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_text_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_text", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_text'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_text_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_text_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_text_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_text_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )
                                 
                        ),
                        tabPanel('geom_col',
                                 
                                 value = 'geom_col',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            sliderInput('geom_col_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_col_element2', label = 'color', choices = c('grey35','darkblue', 
                                                                                                                          'red','#add8e6',
                                                                                                                          'green',
                                                                                                                          'blue',
                                                                                                                          'yellow'),selected = 'grey35'),
                                                            selectInput('geom_col_element3', label = 'fill', choices = c('white','#138D75','grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_col_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                             "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_col_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_col_element6', label='width', min = 0.1 , max = 1.5, value = 0.5, step = 0.1),
                                                            
                                                            checkboxInput(inputId = "geom_col_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_col_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_col", width = 8,
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_col'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_col_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_col_table")
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_col_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_col_text", container = pre)))
                                                         
                                                         
                                                         
                                               )
                                               
                                 )),
                        
                        
                        tabPanel('geom_violin',
                                 
                                 value = 'geom_violin',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            sliderInput('geom_violin_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_violin_element2', label = 'color', choices = c('grey35','darkblue', 
                                                                                                                             'red','#add8e6',
                                                                                                                             'green',
                                                                                                                             'blue',
                                                                                                                             'yellow'),selected = 'grey35'),
                                                            selectInput('geom_violin_element3', label = 'fill', choices = c('white','#138D75','grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_violin_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                                "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_violin_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_violin_element6', label='width', min = 0.1 , max = 1.5, value = 0.5, step = 0.1),
                                                            selectInput('geom_violin_element7', label = 'fill', choices = c('area','count','width'),selected = 'area'),
                                                            
                                                            checkboxInput(inputId = "geom_violin_element8",
                                                                          label = strong("trim"),
                                                                          value = TRUE),
                                                            
                                                            sliderInput('geom_violin_element9', label='adjust', min = 0.5 , max = 4, value = 1, step = 0.5),
                                                            
                                                            sliderInput('geom_violin_element10', label='draw_quantiles', min = 0 , max = 1, value = 0, step = 0.1),
                                                            
                                                            checkboxInput(inputId = "geom_violin_element11",
                                                                          label = strong("Flip coordinates"),
                                                                          value = FALSE),
                                                            
                                                            checkboxInput(inputId = "geom_violin_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_violin_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_violin", width = 8,                                                                                                     
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_violin'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_violin_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_violin_table")
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_violin_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_violin_text", container = pre)))
                                                         
                                                         
                                                         
                                                         
                                                         
                                               )
                                               
                                 )),
                        
                        
                        tabPanel('geom_count',
                                 
                                 value = 'geom_count',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_count_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_count_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                            'red','#add8e6',
                                                                                                                            'green',
                                                                                                                            'blue',
                                                                                                                            'yellow'),selected = 'grey35'),
                                                            selectInput('geom_count_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                            selectInput('geom_count_element4', label = 'shape', choices = c(0:25),selected = 1),
                                                            sliderInput('geom_count_element6', label='stroke', min = 1 , max = 5, value = 0.5, step = 1),
                                                            
                                                            checkboxInput(inputId = "geom_count_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_count_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_count", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_count'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_count_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_count_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_count_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_count_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )),
                        
                        
                        tabPanel('geom_bin2d' ,
                                 
                                 value = 'geom_bin2d',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            sliderInput('geom_bin2d_element1', label='bindwidth1', min = 0.1 , max = 1, value = .1, step = 0.1),
                                                            sliderInput('geom_bin2d_element2', label='bindwidth2', min = 0.1 , max = 1, value = .1, step = 0.1),
                                                            sliderInput('geom_bin2d_element3', label='xlim1', min = 1 , max = 12, value = 4, step = 1),
                                                            sliderInput('geom_bin2d_element4', label='xlim2', min = 1 , max = 12, value = 10, step = 1),
                                                            sliderInput('geom_bin2d_element5', label='ylim1', min = 1 , max = 12, value = 4, step = 1),
                                                            sliderInput('geom_bin2d_element6', label='ylim2', min = 1 , max = 12, value = 10, step = 1),
                                                            
                                                            checkboxInput(inputId = "geom_bin2d_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_bin2d_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_bin2d", width = 8,   
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_bin2d'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_bin2d_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_bin2d_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_bin2d_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_bin2d_text", container = pre)
                                                           )
                                                         )
                                                         
                                               )
                                 )),
                        
                        tabPanel('geom_density2d' ,
                                 
                                 value = 'geom_density2d',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            selectInput('geom_density2d_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                                'red','#add8e6',
                                                                                                                                'green',
                                                                                                                                'blue',
                                                                                                                                'yellow'),selected = 'grey35'),
                                                            sliderInput('geom_density2d_element5', label='size', min = 0.1 , max = 5, value = 0.5, step = 0.5),
                                                            
                                                            
                                                            checkboxInput(inputId = "geom_density2d_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_density2d_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_density2d", width = 8,
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_density2d'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_density2d_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_density2d_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_density2d_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_density2d_text", container = pre)
                                                           )
                                                         )
                                               )
                                 )),
                        
                        tabPanel('geom_hex' ,
                                 
                                 value = 'geom_hex',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            radioButtons("geom_hex_element0", "Fill",
                                                                         c("Based on count" = "def",
                                                                           "modifable" = "mod")),
                                                            
                                                            sliderInput('geom_hex_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_hex_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                          'red','#add8e6',
                                                                                                                          'green',
                                                                                                                          'blue',
                                                                                                                          'yellow'),selected = 'grey35'),
                                                            selectInput('geom_hex_element3', label = 'fill', choices = c('white','#138D75', 'grey','black','orange','grey35'),selected = 'grey35'),
                                                            sliderInput('geom_hex_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_hex_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_hex_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_hex", width = 8,   
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_hex_element0 == 'mod'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_hex'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_hex_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_hex_text", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_hex_element0 == 'def'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_hex1'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_hex_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_hex_text1", container = pre)
                                                             )
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_hex_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_hex_table")
                                                           ))
                                                         
                                               )
                                 )),
                        
                        tabPanel('geom_line' ,
                                 
                                 value = 'geom_line',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            radioButtons("geom_line_element0", "Colors",
                                                                         c("multiline" = "def",
                                                                           "modifable" = "mod")),
                                                            
                                                            sliderInput('geom_line_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            conditionalPanel(
                                                              condition = "input.geom_line_element0 == 'mod'",
                                                              selectInput('geom_line_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                             'red','#add8e6',
                                                                                                                             'green',
                                                                                                                             'blue',
                                                                                                                             'yellow'),selected = 'grey35')),
                                                            selectInput('geom_line_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                              "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_line_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_line_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_line_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_line", width = 8,
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_line_element0 == 'mod'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_line'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_line_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_line_table")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_line_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_line_text", container = pre)
                                                             )
                                                           )
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_line_element0 == 'def'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_line1'))
                                                           ),
                                                           conditionalPanel(
                                                             condition = "input.geom_line_table == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      tableOutput("geom_line_table1")
                                                             )),
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_line_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_line_text1", container = pre)
                                                             )
                                                           )
                                                         )
                                               )
                                 )),
                        
                        
                        tabPanel('geom_step' ,
                                 
                                 value = 'geom_step',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            sliderInput('geom_step_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_step_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                           'red','#add8e6',
                                                                                                                           'green',
                                                                                                                           'blue',
                                                                                                                           'yellow'),selected = 'grey35'),
                                                            selectInput('geom_step_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                              "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_step_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_step_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_step_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_step", width = 8,                                 
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_step'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_step_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_step_table")
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_step_text == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    textOutput("geom_step_text", container = pre)
                                                           )
                                                         )
                                                         
                                               )
                                 )),
                        
                        
                        tabPanel('geom_error' ,
                                 
                                 value = 'geom_error',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            
                                                            selectInput('geom_error_element0', label = 'geom', choices = c('geom_linerange','geom_crossbar', 'geom_errorbar','geom_pointrange'),selected = 'geom_linerange'),
                                                            
                                                            
                                                            
                                                            sliderInput('geom_error_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_error_element2', label = 'color', choices = c('darkblue','grey35', 
                                                                                                                            'red','#add8e6',
                                                                                                                            'green',
                                                                                                                            'blue',
                                                                                                                            'yellow'),selected = 'grey35'),
                                                            selectInput('geom_error_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                               "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_error_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_error_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_error_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_error", width = 8,   
                                                         
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_error_element0 == 'geom_linerange'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_linerange'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_error_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_linerange_text", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_error_element0 == 'geom_crossbar'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_crossbar'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_error_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_crossbar_text", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_error_element0 == 'geom_errorbar'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_errorbar'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_error_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_errorbar_text", container = pre)
                                                             )
                                                           )),
                                                         
                                                         conditionalPanel(
                                                           condition = "input.geom_error_element0 == 'geom_pointrange'",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    splitLayout(plotOutput('plot_geom_pointrange'))
                                                           ),
                                                           
                                                           
                                                           conditionalPanel(
                                                             condition = "input.geom_error_text == true",
                                                             fluidRow(style = "padding-right: 10px;",
                                                                      textOutput("geom_pointrange_text", container = pre)
                                                             )
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_error_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_error_table")
                                                           ))
                                                         
                                               )
                                 ))),
             
             navbarMenu("Three Variables",
                        
                        tabPanel('geom_contour',
                                 
                                 value = 'geom_contour',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            sliderInput('geom_contour_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_contour_element2', label = 'color', choices = c('grey35','darkblue','red','#add8e6','green','blue','yellow'),selected = 'grey35'),
                                                            
                                                            selectInput('geom_contour_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_contour_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            sliderInput('geom_contour_element6', label='weight', min = 1 , max = 100, value = 1, step = 10),
                                                            
                                                            checkboxInput(inputId = "geom_contour_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_contour_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_contour", width = 8,
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_contour'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_contour_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_contour_table")
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_contour_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_contour_text", container = pre)))
                                                         
                                                         
                                                         
                                               )
                                               
                                 )),
                        
                        tabPanel('geom_raster',
                                 
                                 value = 'geom_raster',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            sliderInput('geom_raster_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            checkboxInput(inputId = "geom_raster_element2",
                                                                          label = strong("Interpolate"),
                                                                          value = FALSE),
                                                            
                                                            checkboxInput(inputId = "geom_raster_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_raster_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_raster", width = 8,
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_raster'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_raster_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_raster_table")
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_raster_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_raster_text", container = pre)))
                                                         
                                                         
                                                         
                                               )
                                               
                                 )),
                        
                        
                        
                        tabPanel('geom_tile',
                                 
                                 value = 'geom_tile',   sidebarLayout(position = "left",
                                               sidebarPanel("Aesthetics",width = 4,
                                                            
                                                            sliderInput('geom_tile_element1', label='alpha', min = 0 , max = 1, value = 1, step = 0.1),
                                                            selectInput('geom_tile_element2', label = 'color', choices = c('grey35','darkblue', 
                                                                                                                           'red','#add8e6',
                                                                                                                           'green',
                                                                                                                           'blue',
                                                                                                                           'yellow'),selected = 'grey35'),
                                                            selectInput('geom_tile_element4', label = 'linetype', choices = c("blank", "solid", "dashed", "dotted", "dotdash", 
                                                                                                                              "longdash","twodash"),selected = 'solid'),
                                                            sliderInput('geom_tile_element5', label='size', min = 0.1 , max = 3, value = 0.5, step = 0.5),
                                                            
                                                            checkboxInput(inputId = "geom_tile_table",
                                                                          label = strong("Show data"),
                                                                          value = TRUE),
                                                            
                                                            checkboxInput(inputId = "geom_tile_text",
                                                                          label = strong("Show ggplot function"),
                                                                          value = FALSE)
                                                            
                                               ),
                                               mainPanel("geom_tile", width = 8,
                                                         
                                                         
                                                         fluidRow(style = "padding-right: 10px;",
                                                                  splitLayout(plotOutput('plot_geom_tile'))
                                                         ),
                                                         conditionalPanel(
                                                           condition = "input.geom_tile_table == true",
                                                           fluidRow(style = "padding-right: 10px;",
                                                                    tableOutput("geom_tile_table")
                                                           )),
                                                         conditionalPanel(
                                                           condition = "input.geom_tile_text == true",
                                                           fluidRow(style = "padding-right: 20px;",
                                                                    textOutput("geom_tile_text", container = pre)))
                                                         
                                                         
                                                         
                                               )
                                               
                                 )))
  ))
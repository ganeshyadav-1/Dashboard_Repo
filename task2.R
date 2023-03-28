library(shiny)
library(shinydashboard)


# UI
ui <- dashboardPage(skin = "green",
  dashboardHeader(title = "My Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Menu 1", tabName = "menu1", icon = icon("table")),
      menuItem("Menu 2", tabName = "menu2", icon = icon("chart-line")),
      menuItem("Menu 3", tabName = "menu3", icon = icon("sticky-note")),
      menuItem("Contact us", tabName = "contact", icon = icon("phone-alt", class = "fa-rotate-90"))
      
    )
  ),
  dashboardBody(
    
    tabItems(
      tabItem(tabName = "menu1", 
              fluidRow(
                box(width = 12, background = "orange", tags$style(type = "text/css", "#table {color: black;}"), DT::dataTableOutput("table"))
              )
              

              ),
      tabItem(tabName = "menu2",
              plotOutput("plot")),
      tabItem(tabName = "menu3", h1("Menu 3"), p("This is the third menu.")),
      tabItem(tabName = "contact",h2("Contact us"),p("For Enquiry contact :91XXXXXXXX"))
    )
  )

  )

#   server 
server <- function(input, output) {
  output$table <- renderDataTable({
    #browser()
    Orange
    
  })
  
  output$plot <- renderPlot({
    plot(Orange)
  })
}


shinyApp(ui = ui, server = server)




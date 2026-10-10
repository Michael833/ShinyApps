library(shiny)
library(bslib)

# Define UI ----
ui <- page_sidebar(
  title = "censusVis",
  sidebar = sidebar("Create demographic maps with information from the 2010 US Census."),
  card(
    card_header("Choose a variable to display"),
    selectInput(
      "select",
      "Select option",
      choices = list("Percent White" = 1, "Percent Black" = 2, "Percent Hispanic" = 3, "Percent Asian" = 4),
      selected = 1
    )
  ),
  card(
    sliderInput(
      "Range of interest",
      "Set value range",
      min = 0,
      max = 100,
      value = c(0, 100)
    )
  ),
) 


# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
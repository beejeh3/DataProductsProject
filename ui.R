# 'Longley' dataset is avaialbel preloaded
library(datasets)
param_year <- as.list(longley$Year)
# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Longley's economic data"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
  # Define the sidebar with one input
  sidebarPanel(
  selectInput("Year", "Year:", choices=param_year),
  hr(),

  helpText("Longley Economic Data")
      
  ),
    
    # Create a spot for the plot
    mainPanel(
      
      h3("Data Analysis - GNP Vs Employed",align = "center"),
      plotOutput("longleyPlot"), 
  
      h4("Applying Linear Model on this dataset, - Employed Vs GNP ",align = "center"),
      textOutput("longleyText")
    )
    
  )
)

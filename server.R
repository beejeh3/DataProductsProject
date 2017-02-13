# 'Longley' dataset is avaialbel preloaded
library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$longleyPlot <- renderPlot({
  
  # Filter the data by inout Year  
  year_longley <- longley[longley[, "Year"]>input$Year, ]
  
  # Construct the title by adding selected "year"
  main_title <- paste("Selected Year", input$Year)    
  

  # scatter plot
  plot(year_longley$GNP,year_longley$Employed ,xlab = "GNP",ylab = "Employed", main = main_title)    
    
  })
  
  output$longleyText <- renderPrint({
    # apply linear Model to predict Employed Vs GNP  
      reg=lm(longley$Employed~longley$GNP)
      print(coef(reg))
    
    })
  
}

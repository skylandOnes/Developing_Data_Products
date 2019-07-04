# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data
data_iris <- read.csv("./iris.csv")

# Define a server for the Shiny app 
function(input, output) { 
    
    # Fill in the spot we created for a plot 
    output$new <- renderPlot({ 
        
        # Render a barplot 
        barplot(data_iris[,input$Dimension],  
                main=input$Dimension, 
                ylab="Length or Width for Iris", 
                xlab="Data row") 
    })
}
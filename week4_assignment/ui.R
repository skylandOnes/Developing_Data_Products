#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data

data_iris <- read.csv("./iris.csv")


# Use a fluid Bootstrap layout 
fluidPage(     
    
    # Give the page a title 
    titlePanel("Iris Data for different dimensions"), 
    
    # Generate a row with a sidebar 
    sidebarLayout(       
        
        
        # Define the sidebar with one input 
        sidebarPanel(p(strong("Documentation:",style="color:red")), 
                     selectInput("Dimension", "Dimension:",  
                                 choices=colnames(data_iris)[1:4]), 
                     hr(), 
                     helpText("Iris data set.") 
        ), 
        
        # Create a spot for the barplot 
        mainPanel( 
            plotOutput("new")   
        ) 
        
    ) 
) 
library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(

  # Application title.
  headerPanel("CFO KPI Performance"),

  # Sidebar with controls to select a dataset and specify the number
  # of observations to view. The helpText function is also used to 
  # include clarifying text. Most notably, the inclusion of a 
  # submitButton defers the rendering of output until the user 
  # explicitly clicks the button (rather than doing it immediately
  # when inputs change). This is useful if the computations required
  # to render output are inordinately time-consuming.
  sidebarPanel(
    selectInput("dataset", "Choose a KPI:", 
                choices = c("Return On Equity","Return on Assets","Cash reserve ratio","Statutory liquidity ratio","Capital Adequacy Ratio",
				"Net Interest Margin","Cost/Income","Operating Profit Margin","Net Profit Margin","Loan to deposit ratio","Revenue/Staff",
				"Operating expense to revenue","Interest expended/ Interest earned","Provision/NPA","Debt to equity ratio",
				"Cash flow from Operations / Net income","EPS","Average NPA per branch")),

    helpText("Note: After the selection click on Update View button"),

    submitButton("Update View")
  ),

  # Show a summary of the dataset and an HTML table with the requested
  # number of observations. Note the use of the h4 function to provide
  # an additional header above each output section.
  mainPanel(
    tableOutput("NPA")
  )
))

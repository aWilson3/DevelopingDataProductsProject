library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Win Percentage Estimator'),
  sidebarPanel(style = "background-color:lightblue",
    sliderInput('RS', 'Runs Scored', 500, min = 400, max = 700, step = 20),
    sliderInput('RA', 'Runs Allowed', 500, min = 400, max = 700, step = 20)
    ),
  mainPanel(style = "background-color:lightgreen",
    h3(style = "color:blue", 'Results'),
    h4('Runs Scored:'),
    verbatimTextOutput('oRS'),
    h4('Runs Allowed:'),
    verbatimTextOutput('oRA'),
    h4('Estimated Winning Percentage:'),
    verbatimTextOutput('oWP'),
    h4('Estimated Games Won:'),
    verbatimTextOutput('oGW'),
    h4('Estimated Games Lost:'),
    verbatimTextOutput('oGL')
    )
  )
)
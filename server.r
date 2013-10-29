library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {

  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "Return On Equity" = KPI1,
		   "Return on Assets" = KPI2,
           "Cash reserve ratio" = KPI3,
		   "Statutory liquidity ratio" = KPI4,
		   "Capital Adequacy Ratio" = KPI5,
		   "Net Interest Margin" = KPI6,
		   "Cost/Income" = KPI7,
		   "Operating Profit Margin" = KPI8,
		   "Net Profit Margin" = KPI9,
		   "Loan to deposit ratio" = KPI10,
		   "Revenue/Staff" = KPI11,
		   "Operating expense to revenue" = KPI12,
		   "Interest expended/ Interest earned" = KPI13,
		   "Provision/NPA" = KPI14,
		   "Debt to equity ratio" = KPI15,
		   "Cash flow from Operations / Net income" = KPI16,
		   "EPS" = KPI17,
		   "Average NPA per branch" = KPI18)
  })

    # Generate the second chart
  output$NPA <- renderGvis({
    dataset <- datasetInput()
    G2=gvisColumnChart(dataset, xvar="label", yvar=c("NPA","Gross_Asset"),options=list(title="NPA as a % of gross Assets",height=300, width=400),chartid="G2")
	G1=gvisColumnChart(dataset, xvar="label", yvar="Value",options=list(title="KPI Values",height=300, width=400),chartid="G1")
	G1G2=gvisMerge(G1,G2, horizontal=TRUE,chartid="G1G2")
	G1G2$html$chart["jsDrawChart"]="\n// jsDrawChart\nfunction drawChartG2() 
								{\nvar data = gvisDataG2();
								\nvar options = {};
								\noptions[\"allowHtml\"] = true;
								\noptions[\"title\"] = \"KPI Values\";
								\noptions[\"height\"] =    300;\
								\noptions[\"width\"] =    400;
								\noptions[\"series\"] = [{type:\"line\",targetAxisIndex: 1},{targetAxisIndex:0}];
								\noptions[\"legend\"] = {position: \"bottom\", textStyle: {color: \"black\", fontSize: 10}}
								\n\n\n    var chart = new google.visualization.ColumnChart(\n    document.getElementById('G2')\n    );
								\n    chart.draw(data,options);
								
								\n    \n\n}\n  \n\n\n// jsDrawChart\nfunction drawChartG1() {\nvar data = gvisDataG1();
								\nvar options = {};
								\noptions[\"allowHtml\"] = true;
								\noptions[\"title\"] = \"NPA as a % of gross Assets\";
								\noptions[\"height\"] =    300;
								\noptions[\"width\"] =    400;
								\noptions[\"legend\"] = {position: \"bottom\", textStyle: {color: \"black\", fontSize: 10}}
								\n\n\n    var chart = new google.visualization.ColumnChart(\n    document.getElementById('G1')\n    );
								\n    chart.draw(data,options);\n    \n\n}\n  \n" 

	return(G1G2)
  })
})

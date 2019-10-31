bootstrapPage(
  
  selectInput(inputId = "n_breaks",
              label = "Número de contenedores en el histograma (aproximada):",
              choices = c(10, 20, 35, 50),
              selected = 20),
  
  checkboxInput(inputId = "individual_obs",
                label = strong("Mostrar observaciones individuales"),
                value = FALSE),
  
  checkboxInput(inputId = "density",
                label = strong("Mostrar estimación de densidad"),
                value = FALSE),
  
  plotOutput(outputId = "main_plot", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Ajuste de ancho de banda:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )
  
)
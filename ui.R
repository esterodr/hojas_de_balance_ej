
library(shiny)
library(shinydashboard)

shinyUI(fluidPage(
    
    fluidRow(
        column(10,
               tags$h4(class = "text-center",
                       "Ejemplos de uso del Simulador de Hojas de Balance")),
        column(2, 
               tags$a(href="https://esterodr.shinyapps.io/hojas_de_balance/", 
                      "Acceder al Simulador"))
    ),

    fluidRow(
             column(1),
             column(11,
                    selectInput(
                        inputId="Ejemplo",
                        label="Seleccione el ejemplo a reproducir",
                        choices=c("1. Superávit Comercial, Compra de Reservas, Esterilización con LELIQ al SF",
                                  "2. Superávit Comercial, Compra de Reservas, Esterilización con LEBAC al SPnF",
                                  "3. Financiamiento Monetario del Déficit, Esterilizado con LELIQ al SF",
                                  "4. Financiamiento Monetario del Déficit, Esterilizado con LEBAC al SPnF",
                                  "5. Financiamiento del Déficit con Deuda Externa, Esterilizado con LELIQ al SF",
                                  "6. Financiamiento del Déficit con Deuda Externa, Esterilizado con LEBAC al SPnF",
                                  "7. Carry Trade con Títulos Públicos",
                                  "8. Carry Trade con pasivos del Banco Central"),
                        selected = NULL,
                        multiple = FALSE,
                        selectize = TRUE,
                        width = '50%',
                        size = NULL)
             )   
                     
        
    ),
    
    fluidRow(
        column(1),
        column(3,
               conditionalPanel(condition = "input.Ejemplo == '1. Superávit Comercial, Compra de Reservas, Esterilización con LELIQ al SF'",
               radioButtons(inputId = "Ejemplo1",
                            label="Seleccione el paso a visualizar",
                            choices = c("0. Inicio",
                                        "1. Superávit Comercial",
                                        "2. Compra de Reservas",
                                        "3. Esterilización con LELIQ al SF"),
                            selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '2. Superávit Comercial, Compra de Reservas, Esterilización con LEBAC al SPnF'",
                                radioButtons(inputId = "Ejemplo2",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Superávit Comercial",
                                                         "2. Compra de Reservas",
                                                         "3. Esterilización con LEBAC al SPnF"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '3. Financiamiento Monetario del Déficit, Esterilizado con LELIQ al SF'",
                                radioButtons(inputId = "Ejemplo3",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de Adelantos Transitorios",
                                                         "2. Gasto Público",
                                                         "3. Esterilización con LELIQ al SF"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '4. Financiamiento Monetario del Déficit, Esterilizado con LEBAC al SPnF'",
                                radioButtons(inputId = "Ejemplo4",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de Adelantos Transitorios",
                                                         "2. Gasto Público",
                                                         "3. Esterilización con LEBAC al SPnF"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '5. Financiamiento del Déficit con Deuda Externa, Esterilizado con LELIQ al SF'",
                                radioButtons(inputId = "Ejemplo5",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de Deuda en USD con el RM",
                                                         "2. Gasto Público",
                                                         "3. Esterilización con LELIQ al SF"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '6. Financiamiento del Déficit con Deuda Externa, Esterilizado con LEBAC al SPnF'",
                                radioButtons(inputId = "Ejemplo6",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de Deuda en USD con el RM",
                                                         "2. Gasto Público",
                                                         "3. Esterilización con LEBAC al SPnF"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '7. Carry Trade con Títulos Públicos'",
                                radioButtons(inputId = "Ejemplo7",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de Deuda en Pesos con el RM",
                                                         "2. Transcurso del Tiempo",
                                                         "3. Cancelación de la deuda"),
                                             selected = "0. Inicio")
               ),
               
               conditionalPanel(condition = "input.Ejemplo == '8. Carry Trade con pasivos del Banco Central'",
                                radioButtons(inputId = "Ejemplo8",
                                             label="Seleccione el paso a visualizar",
                                             choices = c("0. Inicio",
                                                         "1. Emisión de LEBAC con el RM",
                                                         "2. Transcurso del Tiempo",
                                                         "3. Cancelación de la deuda"),
                                             selected = "0. Inicio")
               )
        ),
        
        column(8,
               box(
                   status = "primary", 
                   width = 8, 
                   uiOutput("analisis")
               ))
    ),
    
    fluidRow(class = "text-center",
             box(
                 uiOutput('image')
             )
    )
))


library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$image <- renderUI({
    if(input$Ejemplo=="1. Superávit Comercial, Compra de Reservas, Esterilización con LELIQ al SF"){  
      
      if(input$Ejemplo1=="1. Superávit Comercial") {
        img(src = "1_1.png")
      } else if(input$Ejemplo1=="2. Compra de Reservas") {
        img(src = "1_2.png")
      } else if(input$Ejemplo1=="3. Esterilización con LELIQ al SF") {
        img(src = "1_3.png")
      } else if(input$Ejemplo1=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="2. Superávit Comercial, Compra de Reservas, Esterilización con LEBAC al SPnF"){  
      
      if(input$Ejemplo2=="1. Superávit Comercial") {
        img(src = "1_1.png")
      } else if(input$Ejemplo2=="2. Compra de Reservas") {
        img(src = "1_2.png")
      } else if(input$Ejemplo2=="3. Esterilización con LEBAC al SPnF") {
        img(src = "2_3.png")
      } else if(input$Ejemplo2=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="3. Financiamiento Monetario del Déficit, Esterilizado con LELIQ al SF"){  
      
      if(input$Ejemplo3=="1. Emisión de Adelantos Transitorios") {
        img(src = "3_1.png")
      } else if(input$Ejemplo3=="2. Gasto Público") {
        img(src = "3_2.png")
      } else if(input$Ejemplo3=="3. Esterilización con LELIQ al SF") {
        img(src = "3_3.png")
      } else if(input$Ejemplo3=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="4. Financiamiento Monetario del Déficit, Esterilizado con LEBAC al SPnF"){  
      
      if(input$Ejemplo4=="1. Emisión de Adelantos Transitorios") {
        img(src = "3_1.png")
      } else if(input$Ejemplo4=="2. Gasto Público") {
        img(src = "3_2.png")
      } else if(input$Ejemplo4=="3. Esterilización con LEBAC al SPnF") {
        img(src = "4_3.png")
      } else if(input$Ejemplo4=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="5. Financiamiento del Déficit con Deuda Externa, Esterilizado con LELIQ al SF"){  
      
      if(input$Ejemplo5=="1. Emisión de Deuda en USD con el RM") {
        img(src = "5_1.png")
      } else if(input$Ejemplo5=="2. Gasto Público") {
        img(src = "5_2.png")
      } else if(input$Ejemplo5=="3. Esterilización con LELIQ al SF") {
        img(src = "5_3.png")
      } else if(input$Ejemplo5=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="6. Financiamiento del Déficit con Deuda Externa, Esterilizado con LEBAC al SPnF"){  
      
      if(input$Ejemplo6=="1. Emisión de Deuda en USD con el RM") {
        img(src = "5_1.png")
      } else if(input$Ejemplo6=="2. Gasto Público") {
        img(src = "5_2.png")
      } else if(input$Ejemplo6=="3. Esterilización con LEBAC al SPnF") {
        img(src = "6_3.png")
      } else if(input$Ejemplo6=="0. Inicio") {
        img(src = "0.png")
      }
      
    } else if(input$Ejemplo=="7. Carry Trade con Títulos Públicos"){  
      
      if(input$Ejemplo7=="1. Emisión de Deuda en Pesos con el RM") {
        img(src = "7_1.png")
      } else if(input$Ejemplo7=="2. Transcurso del Tiempo") {
        img(src = "7_2.png")
      } else if(input$Ejemplo7=="3. Cancelación de la deuda") {
        img(src = "7_3.png")
      } else if(input$Ejemplo7=="0. Inicio") {
        img(src = "7_0.png")
      }
      
    } else if(input$Ejemplo=="8. Carry Trade con pasivos del Banco Central"){  
      
      if(input$Ejemplo8=="1. Emisión de LEBAC con el RM") {
        img(src = "8_1.png")
      } else if(input$Ejemplo8=="2. Transcurso del Tiempo") {
        img(src = "8_2.png")
      } else if(input$Ejemplo8=="3. Cancelación de la deuda") {
        img(src = "8_3.png")
      } else if(input$Ejemplo8=="0. Inicio") {
        img(src = "7_0.png")
      }
      
    }                                   
    
  })
  
  output$analisis <- renderUI({
    if(input$Ejemplo=="1. Superávit Comercial, Compra de Reservas, Esterilización con LELIQ al SF"){  
      
      if(input$Ejemplo1=="1. Superávit Comercial") {
        tags$h5("Por el Superávit Comercial se produce un ingreso de dólares equivalente a $100 millones de pesos, que en principio se supone que se mantiene en un Depósito a la Vista del SPnF. A su vez, suponemos que las entidades financieras dejan todo depositado en la Cta.Cte. en USD que tienen en el BC (parte de estos depósitos son efectivo mínimo, el resto es excedente). Por lo tanto, se contabiliza un aumento de las Reservas Brutas del BC, pero no de las Reservas Netas.")
      } else if(input$Ejemplo1=="2. Compra de Reservas") {
        tags$h5("Cuando vende los USD al BC, el SPnF cambia sus depósitos en USD a depósitos en $. Se produce un incremento de las Reservas Netas del BC (las Reservas Brutas ya habían aumentado) y un aumento de la Base Monetaria. Esto genera un aumento en el saldo de Cta.Cte. en $ del SF en el BC, parte del mismo queda retenido como efectivo mínimo y el resto libre. Adicionalmente, se supone que un 5% de la integración de efectivo mínimo se realiza con Títulos Públicos en $.")
      } else if(input$Ejemplo1=="3. Esterilización con LELIQ al SF") {
        tags$h5("Al esterilizar con LELIQ la Base Monetaria vuelve a su valor original. Sin embargo, esta contracción se realiza extrayendo liquidez del SF. Los depósitos del SPnF quedan intactos (no se modifican ni M2 ni M3).")
      } else if(input$Ejemplo1=="0. Inicio") {
        tags$h5("")
      }
      
    } else if(input$Ejemplo=="2. Superávit Comercial, Compra de Reservas, Esterilización con LEBAC al SPnF"){  
      
      if(input$Ejemplo2=="1. Superávit Comercial") {
        tags$h5("Por el Superávit Comercial se produce un ingreso de dólares equivalente a $100 millones de pesos, que en principio se supone que se mantiene en un Depósito a la Vista del SPnF. A su vez, suponemos que las entidades financieras dejan todo depositado en la Cta.Cte. en USD que tienen en el BC (parte de estos depósitos son efectivo mínimo, el resto es excedente). Por lo tanto, se contabiliza un aumento de las Reservas Brutas del BC, pero no de las Reservas Netas.")
      } else if(input$Ejemplo2=="2. Compra de Reservas") {
        tags$h5("Cuando vende los USD al BC, el SPnF cambia sus depósitos en USD a depósitos en $. Se produce un incremento de las Reservas Netas del BC (las Reservas Brutas ya habían aumentado) y un aumento de la Base Monetaria. Esto genera un aumento en el saldo de Cta.Cte. en $ del SF en el BC, parte del mismo queda retenido como efectivo mínimo y el resto libre. Adicionalmente, se supone que un 5% de la integración de efectivo mínimo se realiza con Títulos Públicos en $.")
      } else if(input$Ejemplo2=="3. Esterilización con LEBAC al SPnF") {
        tags$h5("Al esterilizar con LEBAC al SPnF la Base Monetaria vuelve a su valor original. Adicionalmente, se produce una contracción de los depósitos: M2 y M3 también retoman a su valor original. El balance del SF queda sin modificaciones respecto al inicio.")
      } else if(input$Ejemplo2=="0. Inicio") {
        tags$h5("")
      }
      
    } else if(input$Ejemplo=="3. Financiamiento Monetario del Déficit, Esterilizado con LELIQ al SF"){  
      
      if(input$Ejemplo3=="1. Emisión de Adelantos Transitorios") {
        tags$h5("El BC otorga un Adelanto Transitorio al Gobierno, el cual queda depositado en la cuenta del Tesoro en el BC. Es decir, por el momento no se produce una expansión de la Base Monetaria.")
      } else if(input$Ejemplo3=="2. Gasto Público") {
        tags$h5("El Gobierno gasta el dinero, expandiendo la Base Monetaria y creando un Depósito a la Vista para el SPnF (aumentan M2 y M3). El SF debe realizar la integración de efectivo mínimo, la cual en parte la realiza con títulos públicos")
      } else if(input$Ejemplo3=="3. Esterilización con LELIQ al SF") {
        tags$h5("El BC esteriliza con LELIQ, contrayendo la Base Monetaria a su valor original. Se reduce la liquidez del SF, mientras que los depósitos no se modifican (M2 y M3 conservan el aumento inicial).")
      } else if(input$Ejemplo3=="0. Inicio") {
        tags$h5("")
      }
      
    } else if(input$Ejemplo=="4. Financiamiento Monetario del Déficit, Esterilizado con LEBAC al SPnF"){  
      
      if(input$Ejemplo4=="1. Emisión de Adelantos Transitorios") {
        tags$h5("El BC otorga un Adelanto Transitorio al Gobierno, el cual queda depositado en la cuenta del Tesoro en el BC. Es decir, por el momento no se produce una expansión de la Base Monetaria.")
      } else if(input$Ejemplo4=="2. Gasto Público") {
        tags$h5("El Gobierno gasta el dinero, expandiendo la Base Monetaria y creando un Depósito a la Vista para el SPnF (aumentan M2 y M3). El SF debe realizar la integración de efectivo mínimo, la cual en parte la realiza con títulos públicos")
      } else if(input$Ejemplo4=="3. Esterilización con LEBAC al SPnF") {
        tags$h5("Al esterilizar con LEBAC al SPnF, todos los agregados monetarios retornan a su valor original. El SF ha quedado igual que al principio y todo el gasto público se fue a LEBAC.")
      } else if(input$Ejemplo4=="0. Inicio") {
        tags$h5("")
      }
      
    } else if(input$Ejemplo=="5. Financiamiento del Déficit con Deuda Externa, Esterilizado con LELIQ al SF"){  
      
      if(input$Ejemplo5=="1. Emisión de Deuda en USD con el RM") {
        tags$h5("El Gobierno emite Títulos Públicos en Dólares con el Resto del Mundo. Los dólares recibidos son inmediatamente cambiados por pesos en el BC. Aumentan las Reservas y el Tesoro queda con pesos depositados en su cuenta en el BC.")
      } else if(input$Ejemplo5=="2. Gasto Público") {
        tags$h5("El Gobierno gasta el dinero, creándose un depósito a la vista para el SPnF. Se expanden la Base Monetaria, M2 y M3. El SF debe actualizar su posición de efectivo mínimo.")
      } else if(input$Ejemplo5=="3. Esterilización con LELIQ al SF") {
        tags$h5("Al esterilizar con LELIQ se contrae la Base Monetaria, reduciendo la liquidez del SF. Los depósitos no se modifican (M2 y M3 conservan el aumento inicial). La Deuda en dólares queda como contraparte del aumento de las Reservas.")
      } else if(input$Ejemplo5=="0. Inicio") {
        tags$h5("")
      }
      
    } else if(input$Ejemplo=="6. Financiamiento del Déficit con Deuda Externa, Esterilizado con LEBAC al SPnF"){  
      
      if(input$Ejemplo6=="1. Emisión de Deuda en USD con el RM") {
        tags$h5("El Gobierno emite Títulos Públicos en Dólares con el Resto del Mundo. Los dólares recibidos son inmediatamente cambiados por pesos en el BC. Aumentan las Reservas y el Tesoro queda con pesos depositados en su cuenta en el BC.")
      } else if(input$Ejemplo6=="2. Gasto Público") {
        tags$h5("El Gobierno gasta el dinero, creándose un depósito a la vista para el SPnF. Se expanden la Base Monetaria, M2 y M3. El SF debe actualizar su posición de efectivo mínimo.")
      } else if(input$Ejemplo6=="3. Esterilización con LEBAC al SPnF") {
        tags$h5("Al esterilizar con LEBAC al SPnF se contraen todos los agregados monetarios al valor inicial. La Deuda en dólares queda como contraparte del aumento de las Reservas.")
      } else if(input$Ejemplo6=="0. Inicio") {
        tags$h5("")
      }
      
    }  else if(input$Ejemplo=="7. Carry Trade con Títulos Públicos"){  
      
      if(input$Ejemplo7=="1. Emisión de Deuda en Pesos con el RM") {
        tags$h5("El Gobierno emite deuda en pesos, la cual es suscripta por el Resto del Mundo. Ingresan dólares que son cambiados por pesos en el BC. Se produce un aumento de las Reservas.")
      } else if(input$Ejemplo7=="2. Transcurso del Tiempo") {
        tags$h5("Transcurre un determinado período de tiempo en el que el Tipo de Cambio aumenta 20% y las inversiones en pesos devengan un rendimiento del 40%. Los 100 mil millones de pesos en títulos públicos adquiridos por el resto del mundo ahora equivalen a 140 mil millones de pesos.")
      } else if(input$Ejemplo7=="3. Cancelación de la deuda") {
        tags$h5("El RM cobra sus pesos y se retira, llevándose una ganancia en dólares. Las Reservas del BC aumentaron en pesos por efecto de la suba del TC, pero hay menos dólares que al principio.")
      } else if(input$Ejemplo7=="0. Inicio") {
        tags$h5("")
      }
      
    }   else if(input$Ejemplo=="8. Carry Trade con pasivos del Banco Central"){  
      
      if(input$Ejemplo8=="1. Emisión de LEBAC con el RM") {
        tags$h5("El BC emite LEBAC, las cuales son suscriptas por el resto del mundo. Se produce un ingreso de dólares que incrementa las reservas.")
      } else if(input$Ejemplo8=="2. Transcurso del Tiempo") {
        tags$h5("Transcurre un determinado período de tiempo en el que el Tipo de Cambio aumenta 20% y las inversiones en pesos devengan un rendimiento del 40%. Los 100 mil millones de pesos en LEBAC adquiridos por el resto del mundo ahora equivalen a 140 mil millones de pesos.")
      } else if(input$Ejemplo8=="3. Cancelación de la deuda") {
        tags$h5("El RM cobra sus pesos y se retira, llevándose una ganancia en dólares. Las Reservas del BC aumentaron en pesos por efecto de la suba del TC, pero hay menos dólares que al principio.")
      } else if(input$Ejemplo8=="0. Inicio") {
        tags$h5("")
      }
      
    }                                  
    
  })
  
})

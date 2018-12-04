#' @importFrom magrittr %>%
magrittr::`%>%`

#' Title
#'
#' @param x Um codigo
#'
#' @return Nome das maquinas.
nome_maquina <- function(x) {
  switch(x,
         "0" = "MAQUINAS AGRICOLAS E RODOVIARIAS TOTAL",
         "1" = "TRATORES DE RODAS",
         "2" = "TRATORES DE ESTEIRAS",
         "3" = "CULTIVADORES MOTORIZADOS",
         "4" = "COLHEITADEIRAS DE GRAOS",
         "5" = "COLHEDORAS DE CANA",
         "6" = "RETROESCAVADEIRAS"
  )
}

#' Title
#'
#' @param x Um codigo
#'
#' @return Nome dos veiculos.
nome_veiculo <- function(x) {
  switch(x,
         "0" = "AUTOVEICULO TOTAL",
         "1" = "AUTOMOVEIS",
         "2" = "COMERCIAIS LEVES",
         "3" = "CAMINHOES",
         "4" = "ONIBUS"
  )
}

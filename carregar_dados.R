#' Carregar Dados de Qualidade do Ar
#'
#' Carrega dados de qualidade do ar a partir de um arquivo CSV.
#'
#' @param file_path Caminho para o arquivo CSV.
#' @return Um dataframe com as colunas DateTime e Nitrogen_Dioxide.
#' @examples
#' dados <- carregar_dados("DadosQualidade2023.csv")
carregar_dados <- function(file_path) {
  dados <- read.csv(file_path, sep = ",", encoding = "UTF-8")
  colnames(dados) <- c("DateTime", "Nitrogen_Dioxide")
  dados$DateTime <- as.POSIXct(dados$DateTime, format = "%d/%m/%Y %H:%M:%S", tz = "GMT")
  dados$Nitrogen_Dioxide <- as.numeric(dados$Nitrogen_Dioxide)
  return(dados)
}

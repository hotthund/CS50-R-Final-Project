#' Calcular Média Mensal de NO2
#'
#' Calcula a média mensal dos níveis de NO₂.
#'
#' @param dados Um dataframe com dados de NO₂ e datas.
#' @return Um dataframe com as médias mensais de NO₂.
#' @examples
#' media_mensal <- calcular_media_mensal(dados)
calcular_media_mensal <- function(dados) {
  dados <- dados %>%
    mutate(Year = format(DateTime, "%Y"), Month = format(DateTime, "%m"))
  media_mensal <- dados %>%
    group_by(Year, Month) %>%
    summarise(Media_NO2 = mean(Nitrogen_Dioxide, na.rm = TRUE)) %>%
    ungroup()
  return(media_mensal)
}

#' Gerar Gráficos de NO2
#'
#' Gera gráficos de barras, histogramas e boxplots para os níveis de NO₂.
#'
#' @param media_mensal Um dataframe com as médias mensais de NO₂.
#' @return Gráficos gerados no dispositivo gráfico atual.
#' @examples
#' gerar_graficos(media_mensal)
#' @export
gerar_graficos <- function(media_mensal) {
  media_mensal <- media_mensal %>%
    mutate(YearMonth = paste(Year, Month, sep = "-"))

  # Gráfico de barras das médias mensais de NO₂
  p1 <- ggplot(media_mensal, aes(x = YearMonth, y = Media_NO2)) +
    geom_bar(stat = "identity", fill = "lightblue", color = "black") +
    labs(title = "Média Mensal de Dióxido de Nitrogênio (NO₂) em Vitória-ES - 2023",
         x = "Ano-Mês",
         y = "Média de NO₂ (µg/m³)") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

  print(p1)

  # Histograma dos níveis de NO₂ para 2023
  p2 <- ggplot(media_mensal, aes(x = Media_NO2)) +
    geom_histogram(binwidth = 1, fill = "lightblue", color = "black") +
    labs(title = "Distribuição dos Níveis de NO₂ em 2023",
         x = "Nível de NO₂ (µg/m³)",
         y = "Frequência") +
    theme_minimal()

  print(p2)

  # Boxplot dos níveis de NO₂ por mês em 2023
  p3 <- ggplot(media_mensal, aes(x = Month, y = Media_NO2)) +
    geom_boxplot(fill = "lightblue") +
    labs(title = "Boxplot dos Níveis de NO₂ por Mês em 2023",
         x = "Mês",
         y = "Nível de NO₂ (µg/m³)") +
    theme_minimal()

  print(p3)
}

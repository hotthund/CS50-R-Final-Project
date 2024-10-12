library(testthat)
library(AirQualityAnalysis)

test_that("gerar_graficos funciona sem erros", {
  dados <- carregar_dados("data/DadosQualidade2023.csv")
  media_mensal <- calcular_media_mensal(dados)
  expect_silent(gerar_graficos(media_mensal, dados))
})

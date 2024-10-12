library(testthat)
library(AirQualityAnalysis)

test_that("calcular_media_mensal funciona corretamente", {
  dados <- carregar_dados("data/DadosQualidade2023.csv")
  media_mensal <- calcular_media_mensal(dados)
  expect_true(is.data.frame(media_mensal))
  expect_true(all(c("Year", "Month", "Media_NO2") %in% colnames(media_mensal)))
  expect_true(all(media_mensal$Media_NO2 >= 0))
})

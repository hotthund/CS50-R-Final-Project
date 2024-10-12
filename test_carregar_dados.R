library(testthat)
library(AirQualityAnalysis)

test_that("carregar_dados funciona corretamente", {
  dados <- carregar_dados("data/DadosQualidade2023.csv")
  expect_true(is.data.frame(dados))
  expect_true(all(c("DateTime", "Nitrogen_Dioxide") %in% colnames(dados)))
})

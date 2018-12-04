context("Veiculos")
test_that("Tabela 'veiculos' esta como esperada", {
  expect_true(exists("veiculos", "package:anfavea"))
  expect_identical(ncol(anfavea::veiculos), 4L)
  expect_identical(names(anfavea::veiculos),
                   c("mes", "veiculo", "variavel", "valor"))

})

context("Maquinas")
test_that("Tabela maquinas' esta como esperada", {
  expect_true(exists("maquinas", "package:anfavea"))
  expect_identical(ncol(anfavea::maquinas), 4L)
  expect_identical(names(anfavea::maquinas),
                   c("mes", "maquina", "variavel", "valor"))
})

context("Empregos")
test_that("Tabela 'emprego' esta como esperada", {
  expect_true(exists("empregos", "package:anfavea"))
  expect_identical(ncol(anfavea::empregos), 3L)
  expect_identical(names(anfavea::empregos),
                   c("mes", "tipo", "valor"))
})

context("Exportacoes")
test_that("Tabela 'exportacoes' esta como esperada", {
  expect_true(exists("exportacoes", "package:anfavea"))
  expect_identical(ncol(anfavea::exportacoes), 3L)
  expect_identical(names(anfavea::exportacoes),
                   c("mes", "tipo", "valor"))
})



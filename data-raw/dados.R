# ---- Maquinas ----------------------------------------------------------------
path_maq <- "inst/ext/SeriesTemporais_MaqAgri&Rodoviarias.xlsm"
maquinas <- readxl::read_xlsx(path_maq, skip = 2) %>%
  tidyr::gather(variavel, valor, - X__1) %>%
  tidyr::separate(variavel, c("variavel", "maquina"), "__") %>%
  dplyr::mutate(maquina = ifelse(is.na(maquina), "0", maquina),
                maquina = purrr::map_chr(maquina, anfavea:::nome_maquina)) %>%
  dplyr::select(mes = 1, 3, 2, 4) %>%
  dplyr::filter(!grepl("TOTAL$", maquina))

usethis::use_data(maquinas, overwrite = TRUE)

# ---- Exportacoes -------------------------------------------------------------
path_exp <- "inst/ext/SeriesTemporais_Exportacoes_em_valor.xlsx"
exportacoes <- readxl::read_xlsx(path_exp, skip = 1) %>%
  dplyr::select(mes = 1, veiculos = 3, maquinas = 4) %>%
  tidyr::gather(tipo, valor, -mes)

usethis::use_data(exportacoes, overwrite = TRUE)

# ---- Empregos ----------------------------------------------------------------
path_emp <- "inst/ext/SeriesTemporais_Emprego.xlsx"
empregos <- readxl::read_xlsx(path_emp, skip = 1) %>%
  dplyr::select(mes = 1, veiculos = 3, maquinas = 4) %>%
  tidyr::gather(tipo, valor, -mes)

usethis::use_data(empregos, overwrite = TRUE)

# ---- Veiculos ----------------------------------------------------------------
path_vei <- "inst/ext/SeriesTemporais_Autoveiculos.xlsm"
veiculos <- readxl::read_xlsx(path_vei, skip = 4) %>%
  tidyr::gather(variavel, valor, - X__1) %>%
  tidyr::separate(variavel, c("variavel", "veiculo"), "__") %>%
  dplyr::mutate(veiculo = ifelse(is.na(veiculo), "0", veiculo),
                veiculo = purrr::map_chr(veiculo, anfavea:::nome_veiculo)) %>%
  dplyr::select(mes = 1, 3, 2, 4) %>%
  dplyr::filter(!grepl("TOTAL$", veiculo))

usethis::use_data(veiculos, overwrite = TRUE)

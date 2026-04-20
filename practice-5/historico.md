  638  mkdir practice-5 && cd practice-5
  639  mkdir vendas && cd vendas && mkdir nacionais internacionais intra_filiais && cd .. && mkdir compras && cd compras && mkdir nacionais internacionais intra_filiais && cd ..
  640  cd nacionais
  641  cd vendas/nacionais
  642  ano=2026\nfor estado in "Acre" "Alagoas" "Amapa" "Amazonas" "Bahia" "Ceara" "DistritoFederal" "EspiritoSanto" "Goias" "Maranhao" "MatoGrosso" "MatoGrossoDoSul" "MinasGerais" "Para" "Paraiba" "Parana" "Pernambuco" "Piaui" "RioDeJaneiro" "RioGrandeDoNorte" "RioGrandeDoSul" "Rondonia" "Roraima" "SantaCatarina" "SaoPaulo" "Sergipe" "Tocantins"; do\n    touch "${ano}-${estado}.txt"\ndone
  643  cd ../internacionais
  647  touch $(date +%Y)-{Argentina,Bolivia,Brasil,Chile,Colombia,Equador,Guiana,Paraguai,Peru,Suriname,Uruguai,Venezuela}.txt\n
  648  cd ..
  649  cd ..
  650  cp ./vendas/nacionais/*  ./compras/nacionais/
  652  cp ./vendas/internacionais/*  ./compras/internacionais
  653  ls
  654  mkdir backup
  655  cd backup
  656  tar -Pxvf compras-vendas.tgz -- ( - P iguinora erro de path relativo)
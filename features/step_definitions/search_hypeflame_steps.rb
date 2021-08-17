  Dado('que eu acesse o site da HypeFlame') do
    search.acessar_site
  end
  
  Quando('realizar uma busca por {string}') do |texto|
    @texto = texto
    @resposta_pesqusia = search.pesquisar(@texto)
  end
  
  Então('será apresentado o resultado da pesquisa') do
    @resultado = search.obtem_resultado_encontrado(@texto)
    expect(@resultado).to eq @texto
  end
  
  Então('não apresentrá nenhum resultado associado a pesquisa') do
    expect(@resposta_pesqusia).to eq 'Nenhum resultado'
  end
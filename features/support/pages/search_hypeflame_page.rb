class Search < SitePrism::Page

  set_url '/'
  element :btn_abrir_pesquisa, '#header-search'
  element :input_pesquisar, '#search-container input'
  element :btn_pesquisar, "#search-container button[type='submit']"
  element :titulo_resultado, 'h1.page-title'

  def acessar_site
    load
  end

  def pesquisar(texto)
    btn_abrir_pesquisa.click
    input_pesquisar.set texto
    btn_pesquisar.click
    titulo_resultado.text
  end

  def obtem_resultado_encontrado(texto)
    within('h2', text: texto)do
      find('a').text
    end
  end
  
end
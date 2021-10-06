class ApiComunication
  include LoadFile

  def api_search(url)
    HTTParty.get(url)
  end
end

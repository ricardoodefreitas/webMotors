class SearchInformation < ApiComunication
  include LoadFile

  def construct_url(parameter)
    case parameter
    when 'mark'
      get_url['url']['url_make']
    when 'model'
      get_url['url']['url_model'].gsub('id_model', '1')
    when 'version'
      get_url['url']['url_version'].gsub('id_version', '1')
    when 'vehicles'
      get_url['url']['url_vehicle'].gsub('id_page', '1')
    end
  end
end

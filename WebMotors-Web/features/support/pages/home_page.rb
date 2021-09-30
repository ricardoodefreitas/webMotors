class HomePage < SitePrism::Page

  element :logotipe, '#logoHomeWebmotors'
  element :search_input, '#searchBar'
  element :search_return, :xpath, '//*[@class="SearchBar__results__group"]/a[1]'
  element :close_form, '.modal--close'
  element :serach_return, 'div.Search-result.Search-result--container-right'

  def name_verify
    logotipe.visible?
  end

  def search_vehicle(vehicle)
    search_input.set vehicle
    search_return.click
  end

  def validate_search_return
   serach_return.visible?
  end

  def session_alternate
    page.switch_to_window page.windows.last
  end

  def vehicle_detail
    search_return[0].click
    session_alternate
    close_form.visible?
    close_form.click
  end

end
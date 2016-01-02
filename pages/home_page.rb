class HomePage
  URL = '/'
#  validate :url, pattern: %r{\A(?:.*?:\/\/)?[^\/]*\/?\z}
  add_locator :sgn_in_btn, xpath: '//*[@id="main-message"]/div/div[1]/div/div[2]/div[1]/a'

  def open_sign_in_page
    click_link locator(:sgn_in_btn)
  end
end

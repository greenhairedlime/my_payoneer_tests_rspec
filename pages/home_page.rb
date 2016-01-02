class HomePage < WebPage
  url '/home-b.aspx'
  validate :title, pattern: /\AGlobal Payments, Payout Services &amp; Money Transfer | Payoneer\z/
  # validate :url, pattern: %r{\A(?:.*?:\/\/)?[^\/]*\/?\z}
  add_link_locator :sgn_up_btn, 'Sign Up'#xpath:'//*[@id="main-message"]/div/div[1]/div/div[2]/div[1]/a'

  def open_sign_up_page
    log.info('Try to click SignUp button')
    click_link locator(:sgn_up_btn)
  end
end

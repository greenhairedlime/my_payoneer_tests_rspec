class HomePage < WebPage
  url '/home-b.aspx'
  validate :title, pattern: /\AGlobal Payments, Payout Services &amp; Money Transfer | Payoneer\z/
  add_locator :sgn_up_btn, xpath: './/*[@id="main-message"]/div/div[1]/div/div[2]/div[1]/a/strong'
  # add_locator :sgn_up_btn, 'Sign Up'
  def open_sign_up_page
    log.info '[ACTION]Try to click SignUp button'
    find(locator(:sgn_up_btn)).click
  end
end

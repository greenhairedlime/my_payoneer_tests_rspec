class SignUpPage < WebPage
  url '/partners/or.aspx?pid=Y0LwV0AQC7cY%2b5AIqsZl1g%3d%3d'
  validate :title, pattern: /\ASign Up\z/

  add_field_locator :fname_input, 'txtFirstName'
  add_field_locator :lname_input, 'txtLastName'
  add_field_locator :email_input, 'txtEmail'
  add_field_locator :rtp_email_input, 'txtRetypeEmail'

  add_button_locator :calendar_btn, xpath: '//*[@id="PersonalDetails"]/div[1]/div/div[11]/div[2]/button[1]'
  add_locator :select_month, xpath: '//*[@id="ui-datepicker-div"]/div/div/select[1]'
  add_locator :select_year, xpath: '//*[@id="ui-datepicker-div"]/div/div/select[2]'
  # add_locator :select_date, ->(day) {{"#{day}"}}

  # add_button_locator :next_btn, 'PersonalDetailsButton'
  add_locator :next_btn, ->(section) {{xpath: ".//*[@id='#{section}Button']"}}

  def fill_get_start(firstname: nil, lastname: nil, email: nil, rtpemail: nil, month: nil, year: nil, day: nil)
    log.info('Fill in form Getting Started')
    fill_in(field_locator(:fname_input), with: firstname ) unless fname_input.nil?
    fill_in(field_locator(:lname_input), with: lastname ) unless lname_input.nil?
    fill_in(field_locator(:email_input), with: email ) unless email_input.nil?
    fill_in(field_locator(:rtp_email_input), with: rtpemail ) unless rtp_email_input.nil?
    click_button button_locator(:calendar_btn)
    find(locator(:select_month)).find(month).click
    find(locator(:select_year)).find(year).click
    add_link_locator :select_date, "#{day}"
    find(:select_date).click
    self
  end

  # add_button_locator :next_btn, xpath '//*[@value="Next"]'
  def pick_date
    click_link_or_button(:calendar_btn)
    click_link :select_date
    click_link :select_month
    click_link :select_date
  end

  def click_next(section)
    find(apply(locator(:next_btn), section)).click
  end
end



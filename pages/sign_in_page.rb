class SignInPage
  url '/partners/or.aspx?pid=Y0LwV0AQC7cY%2b5AIqsZl1g%3d%3d'
 # validate :url, pattern: %r{\A(?:.*?:\/\/)?[^\/]*\/?\z}

  add_field_locator :fname_input, xpath: '//*[@id="txtFirstName"]'
  add_field_locator :lname_input, xpath: '//*[@id="txtLastName"]'
  add_field_locator :email_input, xpath: '//*[@id="txtEmail"]'
  add_field_locator :rtp_email_input, xpath: '//*[@id="txtRetypeEmail"]'

  add_button_locator :calendar_btn, xpath: '//*[@id="PersonalDetails"]/div[1]/div/div[11]/div[2]/button[1]'
  add_locator :select_date, xpath: '//*[@id="ui-datepicker-div"]/div/div/select[1]'
  add_locator :select_month, xpath: '//*[@id="ui-datepicker-div"]/div/div/select[2]'
  add_locator :select_date, xpath: '//*[@id="ui-datepicker-div"]/table/tbody/tr[3]/td[4]/a'


  add_button_locator :next_btn, xpath '//*[@value="Next"]'
  def pick_date
    click_link_or_button(:calendar_btn)
    click_link :select_date
    click_link :select_month
    click_link :select_date
  end

  def next
    click_button :next
  end
end



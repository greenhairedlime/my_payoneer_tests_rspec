require 'spec_helper'

RSpec.feature 'SignPage functionality' do
  scenario 'User can pass the Getting Started section with correct credentials.' do
    HomePage.open.open_sign_up_page
    SignUpPage.given.fill_get_start(firstname: 'Test',
                        lastname: 'Kepler',
                        email: settings.def_test_user,
                        rtpemail: settings.def_test_user,
                        month: '3',
                        year: '1989',
                        day: '22')
        .click_next('PersonalDetails')
  end

  scenario 'User can not pass the Getting Started section with incorrect credentials(Email and retyped email are different).' do
    HomePage.open.open_sign_up_page
    SignUpPage.given.fill_get_start(firstname: 'Test',
                        lastname: 'Kepler',
                        email: settings.def_test_user,
                        rtpemail: 'user@maiol.com',
                        month: '3',
                        year: '1989',
                        day: '22')
    expect(SignUpPage.given.text).to include('Please enter the same value again')
  end
end

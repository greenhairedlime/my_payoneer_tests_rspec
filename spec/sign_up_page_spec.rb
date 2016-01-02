require 'spec_helper'

RSpec.feature 'SignPage functionality' do
  scenario '"User can open sign up page with the correct credentials' do
    SignUpPage.open
        .fill_get_start(firstname: 'Test',
                        lastname: 'Kepler',
                        email: settings.def_test_user,
                        rtpemail: settings.def_test_user,
                        month: '3',
                        year: '1989',
                        day: '22')
        .click_next('PersonalDetails')
  end
end

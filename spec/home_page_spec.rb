require 'spec_helper'

RSpec.feature 'Home Page functionality' do
  scenario '"User can open sign up page via SignUp button' do
    HomePage.open.open_sign_up_page
    SignUpPage.given
  end
end

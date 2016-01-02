require 'spec_helper'

RSpec.feature 'Home Page functionality' do
  scenario '"User can open sign up page via SignUp button' do
    HomePage.new.open_sign_in_page
    expect(SignInPage.new).to be_displayed
  end
end

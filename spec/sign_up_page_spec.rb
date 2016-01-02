require 'spec_helper'

RSpec.feature 'SignPage functionality' do
  scenario '"User can open sign up page with the correct credentials' do
    SignUpPage.open

  end
end
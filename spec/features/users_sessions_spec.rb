require 'rails_helper'

describe 'regular user sign up/in/out' do
  it 'follows a regular user session path' do
    visit '/'
    click_link 'sign up'
    fill_in 'email', :with => 'more@test.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Sign Up'
  end
end

# not allowing sign up but not throwing errors for any of the fill ins so im not sure whats going on here

require 'rails_helper'

describe "add, update, delete review pathway" do
  it "allows an admin to add, update, delete a review" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit '/'
    click_link 'sign in'
    fill_in 'email', :with => user.email
    fill_in 'password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content 'test@test.com'
    click_link 'Space Place'
    expect(page).to have_content 'Space Place'
    click_link 'Review this Trip'
    fill_in 'Author', :with => user.email
    fill_in 'Content', :with => "this is really great and lovely"
    click_button 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    click_link 'Edit Review'
    expect(page).to have_content 'Edit your comment'
    fill_in 'Content', :with => "this is really great and BLERG"
    click_button 'Update Review'
    expect(page).to have_content 'Review successfully updated!'
    click_link('Delete Review', :match => :first)
    expect(page).to have_content 'Review successfully destroyed!'
  end
end

require 'rails_helper'

describe "add, edit, delete product pathway" do
  it "allows an admin to add a new product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit '/'
    click_link 'sign in'
    fill_in 'email', :with => user.email
    fill_in 'password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content 'test@test.com'
    click_link 'Add a New Trip'
    fill_in 'Name', :with => product.name
    fill_in 'Image', :with => product.image
    fill_in 'Cost', :with => product.cost
    fill_in 'Description', :with => product.description
    fill_in 'Star', :with => product.star
    fill_in 'Agency', :with => product.agency
    fill_in 'Craft', :with => product.craft
    fill_in 'Distance', :with => product.distance
    click_button 'Create Product'
    expect(page).to have_content 'Product has been added'
    click_link("Space Place", :match => :first)
    expect(page).to have_content 'Vega'
    click_link 'Edit This Trip'
    expect(page).to have_content 'Editting Space Place'
    fill_in 'Name', :with => 'New Space Place'
    click_button 'Update Product'
    expect(page).to have_content 'New Space Place'
    click_link 'New Space Place'
    expect(page).to have_content 'Remove this Trip'
    click_link 'Remove this Trip'
    expect(page).to have_content 'Product has been removed'
  end
end

require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
	  
    expect(page).to have_field('First name')
	  expect(page).to have_field('Last name')
	  expect(page).to have_field('Homepage')
  end

  it "should have a submitt button" do
    visit new_author_path
	  
    expect(page).to have_css('input[type="submit"]')
  end


  it "save a newly created author" do
    visit new_author_path
    fill_in "author_first_name", :with => 'Alan'
    fill_in "author_last_name", :with => 'Turing'
    fill_in "author_homepage", :with => 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
end

end
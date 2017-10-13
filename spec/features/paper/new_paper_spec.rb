require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render withour error" do
    visit new_paper_path
  end

  it "should have text input for title, venue, and year" do
    visit new_paper_path
	  
    expect(page).to have_field('Title')
	  expect(page).to have_field('Venue')
	  expect(page).to have_field('Year')
  end

  it "should have a submitt button" do
    visit new_paper_path
    
    expect(page).to have_css('input[type="submit"]')
  end

  it "should save a newly created paper" do
    visit new_paper_path
    fill_in "paper_title", :with => 'Title'
    fill_in "paper_venue", :with => 'Venue'
    fill_in "paper_year", :with => '2017'
    find('input[type="submit"]').click
  end

  it "should validate new papers" do
    visit new_paper_path

    fill_in "paper_title", :with => ''
    fill_in "paper_venue", :with => 'Venue'
    fill_in "paper_year", :with => '2017'
    find('input[type="submit"]').click
    expect(page).to have_text("Title can't be blank")
  end



end
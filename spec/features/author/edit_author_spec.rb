require 'rails_helper'

describe "Author edit page", type: :feature do
  
  it "should render withour error" do
    author = FactoryGirl.create :author
    visit edit_author_path(author)
  end

  
  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
    
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end
end
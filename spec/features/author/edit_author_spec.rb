require 'rails_helper'

describe "Author edit page", type: :feature do
  
  it "should render withour error" do
    author = FactoryGirl.create :author
    visit edit_author_path(author)
  end


  it "should have text input for first name, last name, and homepage" do
    author = FactoryGirl.create :author
    visit edit_author_path(author)
    
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end


  it "should save the edited author" do
    author = FactoryGirl.create :author
    visit edit_author_path(author)
    
    fill_in "author_first_name", :with => 'Alan2'
    fill_in "author_last_name", :with => 'Turing2'
    fill_in "author_homepage", :with => 'http://wikipedia.org/Alan_Turing2'
    find('input[type="submit"]').click
  end

end
require 'rails_helper'

describe "Author details page", type: :feature do
  
  
  it "should display the first name" do
    @author = FactoryGirl.create :author
    visit author_path(@author)

    expect(page).to have_text('First name: '+@author.first_name)
  end

  it "should display the last name" do
    @author = FactoryGirl.create :author
    visit author_path(@author)

    expect(page).to have_text('Last name: '+@author.last_name)
  end

  it "should display the homepage" do
    @author = FactoryGirl.create :author
    visit author_path(@author)

    expect(page).to have_text('Homepage: '+@author.homepage)
  end
end
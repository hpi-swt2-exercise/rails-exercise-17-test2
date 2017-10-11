require 'rails_helper'

describe "Author details page", type: :feature do
  
  
  it "should display the first name" do
    @author = FactoryGirl.create :author
    visit "/authors/" + @author.id.to_s

    expect(page).to have_text('name')
  end


end
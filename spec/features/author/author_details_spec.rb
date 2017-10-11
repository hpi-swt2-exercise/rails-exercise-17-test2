require 'rails_helper'

describe "Author details page", type: :feature do
  
  
  it "should display the first name" do
    @author = FactoryGirl.create :author
    visit "/authors/" + @author.id.to_s

    expect(page).to have_text('First name:')
    expect(page).to have_text('Alan')
  end

  it "should display the last name" do
    @author = FactoryGirl.create :author
    visit "/authors/" + @author.id.to_s

    expect(page).to have_text('Last name:')
    expect(page).to have_text('Turing')
  end
end
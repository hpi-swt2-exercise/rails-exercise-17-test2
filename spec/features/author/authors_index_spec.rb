require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  it "should render withour error" do
    @author = FactoryGirl.create :author
    visit authors_path

    expect(page).to have_text(@author.name)
    expect(page).to have_text(@author.homepage)
  end
end
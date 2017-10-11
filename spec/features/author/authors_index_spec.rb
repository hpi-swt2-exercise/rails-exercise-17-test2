require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  it "should display name" do
    author = FactoryGirl.create :author
    visit authors_path

    expect(page).to have_text(author.name)
  end

  it "should display homepage" do
    author = FactoryGirl.create :author
    visit authors_path

    expect(page).to have_text(author.homepage)
  end

  it "should have an add-author-link" do
    visit authors_path

    expect(page).to have_link("Add author")
  end

  it "should have a show-author-link" do
    author = FactoryGirl.create :author

    visit authors_path

    expect(page).to have_link("Show", author_path(author))
  end
end
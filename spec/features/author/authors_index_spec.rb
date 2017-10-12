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

  it "should have a edit-author-link" do
    author = FactoryGirl.create :author

    visit authors_path

    expect(page).to have_link("Edit", edit_author_path(author))
  end



  it "should have a destroy-author-link" do
    author = FactoryGirl.create :author

    visit authors_path

    expect(page).to have_link("Destroy", author_path(author))
  end


  it "should have a destroy-author-link" do
    author = FactoryGirl.create :author

    visit authors_path

    #page.click_link('Destroy'+author.id.to_s)
    page.find("a[href='#{author_path(author)}']", :text => /\ADestroy\z/).click
    #(page.find(:css, "a[href=\""+author_pathU+"\"]"))[:href] == author_path(author)).click
    expect(Author.where(id: author.id)).not_to exist
  end
end
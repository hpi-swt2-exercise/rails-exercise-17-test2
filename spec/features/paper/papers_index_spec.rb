require 'rails_helper'

describe "Paper index page", type: :feature do
  
  it "should render withour error" do
    visit papers_path
  end

  it "should display title" do
    paper = FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_text(paper.title)
  end

  it "should display venue" do
    paper = FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_text(paper.venue)
  end

  it "should display year" do
    paper = FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_text(paper.year)
  end


end
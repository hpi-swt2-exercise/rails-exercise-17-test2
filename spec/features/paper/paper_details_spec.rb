require 'rails_helper'

describe "Paper details page", type: :feature do
  
  it "should display the title" do
    @paper = FactoryGirl.create :paper
    visit paper_path(@paper)

    expect(page).to have_text('Title: '+@paper.title)
  end

  it "should display the venue" do
    @paper = FactoryGirl.create :paper
    visit paper_path(@paper)

    expect(page).to have_text('Venue: '+@paper.venue)
  end

  it "should display the year" do
    @paper = FactoryGirl.create :paper
    visit paper_path(@paper)

    expect(page).to have_text('Year: '+@paper.year.to_s)
  end

  it "should display the author" do
    @paper = FactoryGirl.create :paper
    @author = FactoryGirl.create :author
    visit paper_path(@paper)

    expect(page).to have_text(@paper.authors.first.name)
  end
end
require 'rails_helper'

describe "Paper edit page", type: :feature do
  
  it "should render withour error" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
  end


  it "should have text input for title, venue, and year" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
    
    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end


  it "should save the edited paper" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
    
    fill_in "paper_title", :with => 'Title'
    fill_in "paper_venue", :with => 'Venue'
    fill_in "paper_year", :with => '2017'
    find('input[type="submit"]').click
  end


  it "should have five author fields" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
    
    5.times do |i| 
      expect(page).to have_field("Author #{i+1}")
    end

    5.times do |i| 
      expect(page).to have_field("paper_author_id_#{i+1}")
    end
  end

  it "should change the first author" do
    paper = FactoryGirl.create :paper
    author2 = Author.new(:first_name => 'Peter', :last_name => 'Plagiarist', :homepage => 'http://wikipedia.de/alan_turing')
    author2.save!

    visit edit_paper_path(paper)

    select author2.name, :from => "paper_author_id_1"
    find('input[type="submit"]').click

    expect(Paper.find(paper.id).authors.first).to eq(author2) 

  end


end
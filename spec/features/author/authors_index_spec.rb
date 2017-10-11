require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  it "should render withour error" do
    visit authors_path

    expect(page).to have_text('Homepage: '+@author.homepage)
  end
end
require 'rails_helper'

describe "Author edit page", type: :feature do
  
  it "should render withour error" do
    author = FactoryGirl.create :author
    visit edit_author_path(author)
  end
end
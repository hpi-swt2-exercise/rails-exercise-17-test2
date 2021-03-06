require 'rails_helper'

RSpec.describe Author, type: :model do
  
  it "should have fields after creation" do

  	first_name = 'Alan'
  	last_name = 'Turing'
  	homepage = 'http://wikipedia.org/Alan_Turing'

    author = Author.new(:first_name => first_name, :last_name => last_name, :homepage => homepage)

    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end

  it "return the full name on calling the method name" do
    author = Author.new(:first_name => 'Alan', :last_name => 'Turing', :homepage => 'http://wikipedia.org/Alan_Turing')

    expect(author.name).to eq('Alan Turing')
  end

end

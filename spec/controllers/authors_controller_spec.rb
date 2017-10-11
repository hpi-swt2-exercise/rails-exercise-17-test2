require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  it "responds to DELETE" do
  	@author = FactoryGirl.create :author
  	delete :destroy, :id => @author.id
  end

end

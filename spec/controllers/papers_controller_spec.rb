require 'rails_helper'

RSpec.describe PapersController, type: :controller do

  it "responds to DELETE" do
  	@paper = FactoryGirl.create :paper
  	delete :destroy, :id => @paper.id
  end

end

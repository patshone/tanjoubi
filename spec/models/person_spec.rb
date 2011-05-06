require 'spec_helper'

describe Person do
  before(:each) do 
    @attr = { :first_name => "Example", :last_name => "User" :date_of_birth => "1977-08-23" }
  end
  it "should create a new instance given valid attributes" do 
      Person.create!(@attr)
  end
  
  it "should require a first name"
  
  it "should require a last name"
  
end

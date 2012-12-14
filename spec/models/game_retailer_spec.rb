require 'spec_helper'

describe GameRetailer do
  
  it "requires a name" do
    subject.website = "http://amazon.com"
      
    subject.should_not be_valid   
    subject.name = "Amazon"   
    subject.should be_valid
  end
  
end

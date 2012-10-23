require 'spec_helper'

describe User do
  
  it "requires a name" do
    subject.email = "ana@cunha.com"
    
    subject.should_not be_valid   
    subject.name = "Ana"   
    subject.should be_valid
  end
  
  it "requires an email" do
    subject.name = "Ana"
    
    subject.should_not be_valid
    subject.email = "ana@cunha.com"
    subject.should be_valid
  end
  
end

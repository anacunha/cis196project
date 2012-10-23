require 'spec_helper'

describe VideoGameConsole do
  
  it "requires a name" do
    subject.manufacturer = "Microsoft"
      
    subject.should_not be_valid   
    subject.name = "Xbox 360"   
    subject.should be_valid
  end
  
  it "requires a manufacturer" do
    subject.name = "Xbox 360"
    
    subject.should_not be_valid
    subject.manufacturer = "Microsoft"
    subject.should be_valid
  end
  
end

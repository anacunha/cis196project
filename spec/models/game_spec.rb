require 'spec_helper'

describe Game do
  
  it "requires a title" do
    subject.platforms = [Platform.new(name: "Xbox 360", manufacturer: "Microsoft")]
      
    subject.should_not be_valid   
    subject.title = "Halo 4"   
    subject.should be_valid
  end
  
  it "requires a platform" do
    subject.title = "Halo 4"
    
    subject.should_not be_valid
    subject.platforms = [Platform.new(name: "Xbox 360", manufacturer: "Microsoft")]
    subject.should be_valid
  end
  
end

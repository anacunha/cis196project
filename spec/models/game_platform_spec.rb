require 'spec_helper'

describe GamePlatform do
  
  it "requires a game" do
    subject.platform = Platform.new(name: "Xbox 360", manufacturer: "Microsoft")
      
    subject.should_not be_valid   
    subject.game = Game.new(title: "Halo 4")
    subject.should be_valid
  end
  
  it "requires a platform" do
    subject.game = Game.new(title: "Halo 4")
      
    subject.should_not be_valid   
    subject.platform = Platform.new(name: "Xbox 360", manufacturer: "Microsoft")
    subject.should be_valid
  end
  
end

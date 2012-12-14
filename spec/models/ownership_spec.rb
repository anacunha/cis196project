require 'spec_helper'

describe Ownership do
  
  it "requires a user" do
    subject.game_platform = GamePlatform.new(platform: Platform.new(name: "Xbox 360", manufacturer: "Microsoft"), game: Game.new(title: 'Halo 4'))
      
    subject.should_not be_valid
    subject.user = User.new(name: 'John', email: 'john@email.com', password: 'test1234', password_confirmation: 'test1234')
    subject.should be_valid
  end
  
  it "requires a game_platform" do
    subject.user = User.new(name: 'John', email: 'john@email.com', password: 'test1234', password_confirmation: 'test1234')
    
    subject.should_not be_valid
    subject.game_platform = GamePlatform.new(platform: Platform.new(name: "Xbox 360", manufacturer: "Microsoft"), game: Game.new(title: 'Halo 4'))
    subject.should be_valid
  end
  
end

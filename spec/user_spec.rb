require 'spec_helper'

describe User do
  describe ".create" do
    it "requires a name" do
      user = User.create
      expect(user).to_not be_valid
    end
  end
end

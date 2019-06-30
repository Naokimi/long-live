require 'rails_helper'

describe Skill do
  describe "database" do
    it "should have 42 skills" do
      expect(Skill.count).to eq(42)
    end
  end
end

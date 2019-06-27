require_relative "../app/models/skill"

RSpec.describe Skill do
  it "should have all skills" do
    expect(Skill.all.count).to eq(42)
  end
end

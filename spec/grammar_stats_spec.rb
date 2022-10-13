require "grammar_stats"

RSpec.describe GrammarStats do
  it "returns true if grammar correct" do
    result = GrammarStats.new
    expect(result.check("Hello my name is John Doe.")).to eq true
    expect(result.check("Hello my name is John Do.e")).to eq false
    expect(result.check("hello my name is John Doe.")).to eq false
    expect(result.check("Hello my name is John Doe")).to eq false
  end

  it "tests the percentages" do
    result = GrammarStats.new
    result.check("Hello my name is John Doe.")
    result.check("Hello my name is John Doe.")
    result.check("Hello my name is John Doe.")
    result.check("hello my name is John Doe.")
    expect(result.percentage_good).to eq 75
  end
end
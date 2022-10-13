require 'intermezzo_debugging'

RSpec.describe "To help debug" do
  it "for intended output" do
    result = get_most_common_letter("the roof, the roof, the roof is on fire!")
    expect(result).to eq "o"
  end
end
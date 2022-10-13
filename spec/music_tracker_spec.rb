require "music_tracker"

RSpec.describe MusicTracker do
  it "show the list given two tracks" do
    result = MusicTracker.new
    result.add_track("example")
    result.add_track("test")
    expect(result.show_list).to eq("example\ntest")
  end
end
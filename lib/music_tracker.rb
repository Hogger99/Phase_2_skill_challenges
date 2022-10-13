class MusicTracker
  def initialize
    @track_list = []
  end

  def add_track(track)
    @track_list << track
  end

  def show_list
    return @track_list.join("\n")
  end
end

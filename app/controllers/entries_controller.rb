class EntriesController < ApplicationController
  def index
    # Shows all entries in the database
    @entry = "Waterfalls are pretty and wet."

    @mini_entries = [
      "Cool dogs and cats",
      "ERB means embedded ruby - WHOA",
      "Boots and pants and boots and pants"
    ]
    # render :index
  end
end

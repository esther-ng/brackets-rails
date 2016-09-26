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

  def show
    # If counter has no value (or is falsey) assign it to 0,
    # otherwise, leave it as is
    # Note that this won't work as expected, since a new
    # EntriesController instance is created for each request
    @counter ||= 0
    @counter += 1

    # This is the data we're serving. In the real world,
    # it would come from a database or something
    # (a.k.a. a model)
    mini_entries = [
        "Cool dogs and cats",
        "ERB means embedded ruby - WHOA",
        "Boots and pants and boots and pants"
      ]

    # Write to the `rails server` console
    puts "This is the id: #{params[:id]}"

    # Pull the parameter named :author out of the URI
    @author = params[:author]

    begin
      # Will raise an exception if the ID is non-numeric
      entry_id = Integer(params[:id])

      # Check bounds
      if entry_id >= 0 && entry_id < mini_entries.length
        @entry = mini_entries[entry_id]
      else
        # Return an error
        @entry = "Invalid article ID"
        render status: 404
      end

    rescue ArgumentError
      # Return an error
      @entry = "Invalid article ID"
      render status: 404
    end
    puts @entry
  end
end

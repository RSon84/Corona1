class CoronaTestCounter::CLI
  def call
    puts "\nWelcome to the Covid Test Counter\n"
    get_available_states
    list_states
    get_user_state
    #get_counts(state)
    #list_counts
  end

    def get_available_states
      @states = ["Alaska",
                  "Alabama",
                  "Arkansas",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  " North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
                end
  def list_states
    #list states
    puts 'Choose a state to see testing counts.'
    @states.each.with_index(1) do |state, index|
    puts "#{index}. #{state}"
  end
  end

  def get_user_state
    chosen_state = gets.strip
    binding.pry
    if valid_input(chosen_state)
    end
  end

  def valid_input(input, data)
    input <= data.length && input > 0
  end
end

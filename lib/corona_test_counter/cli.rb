class CoronaTestCounter::CLI
  def call
    puts "\nWelcome to the Covid Test Counter!\n".colorize(:green)
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
                  "North Dakota",
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
    puts "Please type in the state as it appears for the state's data.".colorize(:yellow)
    @states.each do |state, index|
    puts "#{index}. #{state}"
  end
  end

  def get_user_state
    chosen_state = gets.strip
    show_data_for(chosen_state) if valid_input(chosen_state)
    end
  end

  def valid_input(chosen_state)
    @states.include? chosen_state
  end

  def show_data_for(chosen_state)
    # state = @states[chosen_state.downcase]
    puts "Here are daily increases in testing for #{chosen_state}.".red

    ## To implement
    # CoronaTestCounter::Dates.all.each.with_index(1) do | date|
    #   puts date.
  end

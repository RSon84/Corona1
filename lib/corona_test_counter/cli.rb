class CoronaTestCounter::CLI
  @@muted = "\e[1;31m"
  @@grn = "\e[1;32m"
  @@blu = "\e[1;34m"
  @@mag = "\e[1;35m"
  @@cyn = "\e[1;36m"
  @@white = "\e[0m"

  def call
    puts "\n#{@@grn}Welcome to Eden!#{@@white}\n"
    @input = ""
    until @input == "exit"
      get_available_states
      list_states
      get_user_state
      what_next
    end
    goodbye
  end

  def get_available_states
      @states = Corona::State.states
  end

  def list_states
    puts 'Choose a month to see events.'
    @states.each.with_index(1) do |state, index|
      puts "#{state[2]}: #{state[0]}"
    end
  end

  def get_user_state
    chosen_state = gets.strip
    show_data_for(chosen_state) if valid_input(chosen_state)
    end
  end

  def valid_input(input)
    codes = @states.map { |code| code[2] }
    codes.include?(input)
  end

  def show_data_for(chosen_state)
    # state = @states[chosen_state.downcase]
    puts "Here are daily increases in testing for #{chosen_state}.".red
    CoronaTestCounter::Scraper.scrape_states
    ## To implement
    # CoronaTestCounter::Dates.all.each.with_index(1) do | date|
    #   puts date.
  end

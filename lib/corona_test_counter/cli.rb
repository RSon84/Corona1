class CoronaTestCounter::CLI

attr_accessor :muted, :grn, :blu, :mag, :cyn, :white

  @@muted = "\e[1;31m"
  @@grn = "\e[1;32m"
  @@blu = "\e[1;34m"
  @@mag = "\e[1;35m"
  @@cyn = "\e[1;36m"
  @@white = "\e[0m"

  def initialize

  def call
    puts "\n#{@@grn}Welcome to the Covid State Test Counter#{@@white}\n"
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
      @states = CoronaTestCounter::EachState.states
  end

  def list_states
    puts "\n#{@@mag}Choose a state to see the daily test counts#{@@white}\n"
    @states.each.with_index(1) do |state, index|
      puts "#{state[2]}: #{state[0]}"
    end
  end

  def get_user_state
    puts "Please input the state abbreviation you would like to review."
    chosen_state = gets.strip
    show_state_test_viral(chosen_state) if valid_input(chosen_state)
    end
  end

  def valid_input(chosen_state)
    codes = @states.map { |code| code[2] }
    codes.include?(chosen_state)
  end

  def show_state_test_viral(chosen_state)
    state = CoronaTestCounter::EachState.get_state_url(chosen_state)
    url = "https://covidtracking.com#{state[1]}/tests-viral"
    #puts url
    rows = CoronaTestCounter::Scraper.scrap_table(url)
    puts "#{@@grn}Data For #{state[0]} state is following#{@@white}"
    rows.each_with_index do |row, index|
      current = row
      previous = rows[index + 1]
      puts ("#{current.keys.last} on #{@@blu} #{current.values.first} #{@@white} =  #{@@grn} #{current.values.last.tr(",", "").to_i - previous.values.last.tr(",", "").to_i} #{@@white}") if previous
    end
  end

  def what_next
    puts "#{@@blu}Are you done? Type 'exit' to exit or hit any key to see another state tests#{@@white}"
    @input = gets.strip
  end

  def goodbye
    puts "Program Ended"
  end
end

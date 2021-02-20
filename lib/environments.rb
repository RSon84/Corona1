require_relative "./corona_test_counter/version"
require_relative "./corona_test_counter/cli"
require_relative "./corona_test_counter/scraper"
require_relative "./corona_test_counter/each_state"


require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module CoronaTestCounter
  class Error < StandardError; end
  # Your code goes here...
end

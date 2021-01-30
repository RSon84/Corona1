class CoronaTestCounter::Scraper

def scrape_state
  doc = Nokogiri::HTML(open("https://covidtracking.com/data"))
binding.pry
end
end

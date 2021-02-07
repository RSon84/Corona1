class CoronaTestCounter::Scraper

def self.scrape_states


if self == "alaska"
  doc = Nokogiri::HTML(open("https://covidtracking.com/data/state/alaska/tests-viral"))
  state_count =  doc.xpath("//tbody/tr")

end
end
end

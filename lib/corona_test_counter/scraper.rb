class CoronaTestCounter::Scraper

def scrape_states
  selected_state = gets.downcase.strip

  doc = Nokogiri::HTML(open("https://covidtracking.com/data/state/#{selected_state}/tests-viral"))
  state_count1 =  doc.xpath("//tbody/tr[1]/td[6]/span[2]")

end
end

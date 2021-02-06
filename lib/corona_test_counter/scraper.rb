class CoronaTestCounter::Scraper

def self.scrape_states



  doc = Nokogiri::HTML(open("https://covidtracking.com/data/state/utah/tests-viral"))
  state_count1 =  doc.xpath("//tbody/tr[1]/td[6]/span[2]").text

  puts  "#{state_count1}"


end
end

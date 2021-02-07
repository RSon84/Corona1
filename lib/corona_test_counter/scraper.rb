class CoronaTestCounter::Scraper

def self.scrape_states


#if self == "alaska"
  doc = Nokogiri::HTML(open("https://covidtracking.com/data/state/alaska/tests-viral"))

  state_date =  doc.css("div.container.ddf6f:nth-child(2) div.d3a4d table.e1fd0._4545b:nth-child(13) tbody:nth-child(2) tr:nth-child(1) td.b6f76._4c288:nth-child(1) > span.e0025").text

  state_tests = doc.css("div.container.ddf6f:nth-child(2) div.d3a4d table.e1fd0._4545b:nth-child(13) tbody:nth-child(2) tr:nth-child(1) td:nth-child(6) > span.e0025").text

  puts "#{state_date}. Total tests = #{state_tests}."

end
end
#end

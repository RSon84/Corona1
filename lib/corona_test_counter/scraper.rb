class CoronaTestCounter::Scraper
  @@muted = "\e[1;31m"
  @@grn = "\e[1;32m"
  @@blu = "\e[1;34m"
  @@mag = "\e[1;35m"
  @@cyn = "\e[1;36m"
  @@white = "\e[0m"


  def self.scrap_table(url)
    doc = Nokogiri::HTML(URI.open(url))
    data = []
    doc.css("table tbody tr").each do |tr|
      row = {}
      tr.search('td').each do |td|
        label, value = td.search('span')
        row[label.text] = value.text
      end
      data << row
    end
    return data
  end

end

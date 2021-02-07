class CoronaTestCounter::Each_State
  @@state_count = {}
  @@all = []
  attr_accessor :name, :ref, :date, :count

  def initialize(name)
    @name = name
    @ref = ref
    @date = date
    @count = count


    end
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    @@state_count << self.date && self.count
  end
end

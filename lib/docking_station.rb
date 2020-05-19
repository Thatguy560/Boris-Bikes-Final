require_relative 'bike'

class DockingStation
  attr_reader :StationCapacity, :BikesStored
  DEFAULT_CAPACITY = 20 
  
  def initialize(stationcapacity = DEFAULT_CAPACITY)
    @StationCapacity = stationcapacity 
    @BikesStored = [] 
  end

  def release_bike
    raise "No bikes available" if empty?
    @BikesStored.each_with_index { |bike, index| return @BikesStored.slice!(index) if bike.working? } 
    raise "No working bikes currently available"
  end 
  
  def dock(bike)
    raise "Can't dock bike, station is at max capacity." if full?
    @BikesStored << bike 
  end 
  
  def bikes_available 
    @BikesStored.count
  end 

  def view_available_bikes
    @BikesStored.each { |bike| p bike } 
  end

  private

  def empty?
    @BikesStored.empty?
  end

  def full?
    bikes_available == DEFAULT_CAPACITY
  end

end
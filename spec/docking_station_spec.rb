require 'docking_station'
require 'bike'

describe DockingStation do 
  let(:DockingStation) { DockingStation.new(StationCapacity) }
  let(:bike) { double :bike }
  let(:broken_bike) { double :bike }

  before(:each) do 
  allow(bike).to receive(:working?) { true }
  allow(broken_bike).to receive(:working?) { false }
  end

  it "can release a bike" do 
    5.times do 
      subject.dock(bike) 
    end
    subject.release_bike
    expect(subject.bikes_available).to eq(4)
  end

  it "can dock a bike at the docking station" do 
    subject.dock(bike)
    expect(subject.bikes_available).to eq(1)
  end

  it "will let you see all available bikes in the docking station." do
    bike1 = Bike.new
    bike2 = Bike.new 
    subject.dock(bike1)
    subject.dock(bike2)
    expect(subject.view_available_bikes).to eq [bike1, bike2]
  end

  it "will raise an error if asked to release bikes and there are none available" do 
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "will raise an error if asked to dock a bike when overcapacity" do
    DockingStation::DEFAULT_CAPACITY.times do 
      subject.dock(bike)
    end 
    expect { subject.dock(bike) }.to raise_error "Can't dock bike, station is at max capacity."
  end

  it "Has a variable capacity that can be specified" do
    new_docking_station = DockingStation.new(40)
    expect(new_docking_station.StationCapacity).to eq 40
  end

  it "will raise an error if you try to release a broken bike from the docking station" do 
    subject.dock(broken_bike)
    expect { subject.release_bike }.to raise_error "No working bikes currently available"
  end

end 

# - As a maintainer of the system,
#   So that I can manage broken bikes and not disappoint users,
#   I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
#   (Not Done Yet ✗)
require "dockingstation"

describe DockingStation do
  it "responds to 'release_bike'" do
    expect(subject).to respond_to(:release_bike)
    # expect{DockingStation.new.release_bike}.not_to raise_error
  end
  it "releases working bike" do
    expect(subject.release_bike).to be_working
  end
  it "responds to dock" do
    bike = Bike.new
   expect(subject.dock(bike)).to eq bike
  end
end

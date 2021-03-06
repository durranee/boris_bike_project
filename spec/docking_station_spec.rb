require './lib/docking_station'
describe DockingStation do
    it "responde to release_bike" do
      expect(subject).to respond_to (:release_bike)
    end
=begin
  before(:each) do
    @dockingStation = DockingStation.new
    @bike = Bike.new
  end

  it { should respond_to(:release_bike) }

  it (" docking station should return bike") do
    @dockingStation.dock(@bike)
    expect(@dockingStation.release_bike).to eq @bike
  end
=end
# checks if DockingStation.release_bike is a Bike object
  # it { expect(subject.release_bike).to be_an(Bike) }

# checks DockingStation.dock method that takes 1 argument
  it { should respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  describe '#release_bike' do
    # it ' release bikes' do
    it 'raises an error when there are no bikes available' do
    # bike = Bike.new
    # subject.dock(bike)
    # Again, we need to return the bike we just docked
    # expect(subject.release_bike).to eq bike
    #  Add expectetion
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end


#it "returns an error when there is not bike" do
#  expect {raise "oops"}.to raise_error
#end

  # def dock(bike)
  #   @bike = bike
  # end

require 'bike'

describe Bike do 
  let(:bike) { described_class.new }

  it "gives you the option to check if a given bike is working" do 
    expect(subject.working?).to eq true
  end

  it "can be reported broken" do 
    bike.report_broken
    expect(bike).to_not be_working
  end
end 
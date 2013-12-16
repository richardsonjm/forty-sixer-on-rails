require 'spec_helper'

describe TrekMountain do
  let(:widow_maker) { FactoryGirl.create(:widow_maker) }
  let(:everest) { FactoryGirl.create(:everest) }

  it { should respond_to(:trek_id) }
  it { should respond_to(:mountain_id) }

  it "associates treks and mountains" do
    everest.trek_mountains.create(:trek => widow_maker)
    expect(everest.treks).to include(widow_maker)
    expect(widow_maker.mountains).to include(everest)
  end
  
end

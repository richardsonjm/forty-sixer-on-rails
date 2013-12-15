require 'spec_helper'

describe Mountain do
  let(:everest) {FactoryGirl.build(:everest) }
  let(:k2) {FactoryGirl.build(:k2)}

  it { should respond_to(:name) }
  it { should respond_to(:rank) }
  it { should respond_to(:height) }


  describe "associations" do
    let(:widow_maker) {FactoryGirl.build(:widow_maker)}

    it "has a trek" do
      everest.trek_mountains.build(:trek => widow_maker)

      expect(everest.treks).to include(widow_maker)
    end

    it "has treks" do
    k2.trek_mountains.build(:trek => widow_maker)

    expect(k2.treks).to include(widow_maker)
    end

  end

end

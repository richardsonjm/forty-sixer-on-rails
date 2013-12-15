require 'spec_helper'

describe Mountain do
  let(:everest) { FactoryGirl.build(:everest) }

  it { should respond_to(:name) }
  it { should respond_to(:rank) }
  it { should respond_to(:height) }


  describe "associations" do
    let(:widow_maker) { FactoryGirl.build(:widow_maker) }
    let(:funday) { FactoryGirl.build(:funday) }

    it "has a trek" do
      everest.trek_mountains.build(:trek => widow_maker)

      expect(everest.treks).to include(widow_maker)
    end

    it "has treks" do
      everest.trek_mountains.build(:trek => funday)
      everest.trek_mountains.build(:trek => widow_maker)

      expect(everest.treks).to include(funday)
      expect(everest.treks).to include(widow_maker)
    end

  end

end

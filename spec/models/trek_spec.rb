require 'spec_helper'

describe Trek do
  let(:widow_maker) { FactoryGirl.build(:widow_maker) }

  it { should respond_to(:name) }
  it { should respond_to(:url) }
  it { should respond_to(:diff) }
  it { should respond_to(:distance) }
  it { should respond_to(:duration) }
  it { should respond_to(:desc) }

  describe "associations" do
    let(:everest) {FactoryGirl.build(:everest) }
    let(:k2) {FactoryGirl.build(:k2) }

    it "has a mountain" do
      widow_maker.trek_mountains.build(:mountain => everest)

      expect(widow_maker.mountains).to include(everest)
    end

    it "has mountains" do
      widow_maker.trek_mountains.build(:mountain => everest)
      widow_maker.trek_mountains.build(:mountain => k2)

      expect(widow_maker.mountains).to include(everest)
      expect(widow_maker.mountains).to include(k2)
    end
  end

end

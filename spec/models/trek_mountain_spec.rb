require 'spec_helper'

describe TrekMountain do
  before { FactoryGirl.create(:trek_with_mountain) }

  binding.pry
  it { should respond_to(:trek_id) }
  it { should respond_to(:mountain_id) }
end

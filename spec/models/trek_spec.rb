require 'spec_helper'

describe Trek do
  before { @trek = FactoryGirl.create(:trek) }

  it { should respond_to(:name) }
  it { should respond_to(:url) }
  it { should respond_to(:diff) }
  it { should respond_to(:distance) }
  it { should respond_to(:duration) }
  it { should respond_to(:desc) }

end

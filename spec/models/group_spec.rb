require 'rails_helper'

RSpec.describe Group, type: :model do
  context "attributes" do
    it { is_expected.to respond_to(:time) }
    it { is_expected.to respond_to(:day) }
  end

  context "validations" do
    it { is_expected.to validate_presence_of(:time)}
    it { is_expected.to validate_presence_of(:day)}
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do

  context "attributes" do
    it { is_expected.to respond_to(:name)}
    it { is_expected.to respond_to(:age)}
    it { is_expected.to respond_to(:weight)}
    it { is_expected.to respond_to(:height)}
  end

  context "validations" do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:age)}
    it { is_expected.to validate_presence_of(:weight)}
    it { is_expected.to validate_presence_of(:height)}
  end

end

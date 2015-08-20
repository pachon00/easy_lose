require 'rails_helper'

RSpec.describe Food, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  context "attributes" do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:unit) }
    it { is_expected.to respond_to(:cuantity) }
    it { is_expected.to respond_to(:calories) }
  end

  context "validations" do
		it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:unit)}
    it { is_expected.to validate_presence_of(:cuantity)}
    it { is_expected.to validate_presence_of(:calories)}
  end

end

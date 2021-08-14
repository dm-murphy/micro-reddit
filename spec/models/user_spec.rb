require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(username: "some_user", email: "superman@loislanecinemas.com")
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
    end
  end
end

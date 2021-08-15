require 'rails_helper'

# Original RSpec tests
#
# RSpec.describe User, type: :model do
#   subject {
#     described_class.new(username: "some_user", email: "superman@loislanecinemas.com")
#   }

#   describe "Validations" do
#     it "is valid with valid attributes" do
#       expect(subject).to be_valid
#     end

#     it "is not valid without an email" do
#       subject.email = nil
#       expect(subject).to_not be_valid
#     end

#     it "is not valid without a username" do
#       subject.username = nil
#       expect(subject).to_not be_valid
#     end
#   end
# end

# Factory Bot tests
RSpec.describe User, :type => :model do
  before(:each) do
    @user1 = create(:user)
  end

  it 'is valid with valid attributes' do
    expect(@user1).to be_valid
  end

  it 'has a unique username' do
    user2 = build(:user, email: 'bob@gmail.com')
    expect(user2).to_not be_valid
  end

  it 'has a unique email' do
    user2 = build(:user, username: 'Bob')
    expect(user2).to_not be_valid
  end

  it 'is not valid without a username' do
    user2 = build(:user, username: nil)
    expect(user2).to_not be_valid
  end

  it 'is not valid without an email' do
    user2 = build(:user, email: nil)
    expect(user2).to_not be_valid
  end
end

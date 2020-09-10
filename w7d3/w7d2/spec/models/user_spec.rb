require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do 
    it { should validate_presence_of(:email) } 
    it { should validate_presence_of(:password_digest)}
    it { should validate_length_of(:password).is_at_least(6) }
  end

  it "creates a password digest when a password is given" do
    expect(user.password_digest).to_not be_nil
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Test user model' do
    it 'Add valid user' do
      user = User.create(user_name: 'Joseph')
      expect(user).to be_valid
    end
  end
end
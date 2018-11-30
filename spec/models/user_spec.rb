require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :phone }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :restaurant_owner }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :phone }
    it { is_expected.to validate_presence_of :address }
  end

  describe 'Associations' do
    it { should have_one(:billing) }
    it { should have_one(:shipping) }
    it { should have_many(:orders) }
    it { should have_many(:addresses) }
  end

  describe FactoryBot do 
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end


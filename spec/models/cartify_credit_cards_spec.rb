require 'rails_helper'

RSpec.describe Cartify::CreditCard, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :number }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :mm_yy }
    it { is_expected.to have_db_column :cvv }
    it { is_expected.to have_db_column :created_at }
    it { is_expected.to have_db_column :updated_at }
  end
end


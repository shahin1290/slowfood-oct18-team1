require 'rails_helper'

RSpec.describe Cartify::OrderItem, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :quantity }
    it { is_expected.to have_db_column :unit_price }
    it { is_expected.to have_db_column :total_price }
    it { is_expected.to have_db_column :dish_id }
    it { is_expected.to have_db_column :order_id }
  end
end



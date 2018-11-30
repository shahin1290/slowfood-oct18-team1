require 'rails_helper'

RSpec.describe Cartify::Order, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :subtotal }
    it { is_expected.to have_db_column :total }
    it { is_expected.to have_db_column :user_id }
    it { is_expected.to have_db_column :order_status_id }
    it { is_expected.to have_db_column :coupon_id }
    it { is_expected.to have_db_column :delivery_id }
    it { is_expected.to have_db_column :credit_card_id }
  end
end


require 'rails_helper'

RSpec.describe Cartify::Coupon, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :value }
  end
end


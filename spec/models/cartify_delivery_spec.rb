require 'rails_helper'

RSpec.describe Cartify::Delivery, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :duration }
    it { is_expected.to have_db_column :price }
  end
end

require 'rails_helper'

RSpec.describe Cartify::OrderStatus, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :name }
  end
end

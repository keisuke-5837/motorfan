require 'rails_helper'

RSpec.describe Machine, type: :model do
  before do
    @machine = FactoryBot.build(:machine)
  end

  describe '投稿' do
    context '投稿できるとき' do
      it 'charmとcategory_idが存在すれば投稿できる' do
        expect(@item).to be_valid
      end
    end
  end
end

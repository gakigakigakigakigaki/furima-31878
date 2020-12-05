require 'rails_helper'

RSpec.describe ItemOrder, type: :model do
  describe ItemOrder do
    before do
      @item_order = FactoryBot.build(:item_order)
    end

    it '全ての値が正しく入力されていれば保存できる事' do
      expect(@item_order).to be_valid
    end
    it 'postal_codeが空だと保存できないこと' do
      @item_order.postal_code = nil
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @item_order.postal_code = '1234567'
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
    end
    it 'prefectureを選択していないと保存できないこと' do
      @item_order.prefecture_id = 0
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Prefecture can't be blank")
    end
    it 'cityは空では保存できないこと' do
      @item_order.city = ""
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("City can't be blank")
    end
    it 'house_numberは空では保存できないこと' do
      @item_order.house_number = ""
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("House number can't be blank")
    end
    it 'building_nameは空でも保存できること' do
      @item_order.building_name = ""
      expect(@item_order).to be_valid
    end
    it 'phone_numberは空だと保存できない事' do
      @item_order.phone_number = nil
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Phone number can't be blank")
    end
    it 'phone_numberは11桁以内である事' do
      @item_order.phone_number = '090123456789'
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Phone number can't be blank")
    end
    it 'phone_numberに数字以外の文字が含まれていると保存できない' do
      @item_order.phone_number = '数字以外の文字'
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Phone number can't be blank")
    end
    it "tokenが空では登録できないこと" do
      @item_order.token = nil
      @item_order.valid?
      expect(@item_order.errors.full_messages).to include("Token can't be blank")
    end
    end
  end



